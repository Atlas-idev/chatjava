package com.univchat.services;

import com.univchat.entities.Message;
import com.univchat.entities.Etudiant;
import jakarta.persistence.*;
import java.util.List;

public class MessageService {
    
    private EntityManagerFactory emf;
    private EntityManager entityManager;
    
    public MessageService() {
        try {
            System.out.println("🚀 Initialisation de MessageService...");
            
            this.emf = Persistence.createEntityManagerFactory("univchatPU");
            this.entityManager = emf.createEntityManager();
            
            System.out.println("✅ MessageService initialisé avec succès");
            testConnexion();
            
        } catch (Exception e) {
            System.err.println("❌ Erreur initialisation MessageService: " + e.getMessage());
            throw new RuntimeException("Impossible d'initialiser le service de messages", e);
        }
    }
    
    private void testConnexion() {
        EntityTransaction transaction = entityManager.getTransaction();
        try {
            transaction.begin();
            
            Long countEtudiants = entityManager.createQuery("SELECT COUNT(e) FROM Etudiant e", Long.class)
                    .getSingleResult();
            System.out.println("👤 Étudiants en base: " + countEtudiants);
            
            Long countMessages = entityManager.createQuery("SELECT COUNT(m) FROM Message m", Long.class)
                    .getSingleResult();
            System.out.println("💬 Messages en base: " + countMessages);
            
            transaction.commit();
            
        } catch (Exception e) {
            if (transaction.isActive()) {
                transaction.rollback();
            }
            System.err.println("⚠️ Avertissement test connexion: " + e.getMessage());
        }
    }
    
    public Message enregistrerMessage(String contenu, String pseudoAuteur) {
        if (contenu == null || contenu.trim().isEmpty()) {
            throw new IllegalArgumentException("Le contenu du message ne peut pas être vide");
        }
        if (pseudoAuteur == null || pseudoAuteur.trim().isEmpty()) {
            throw new IllegalArgumentException("Le pseudo de l'auteur ne peut pas être vide");
        }
        
        EntityTransaction transaction = entityManager.getTransaction();
        try {
            transaction.begin();
            
            contenu = contenu.trim();
            pseudoAuteur = pseudoAuteur.trim();
            
            Etudiant etudiant = trouverOuCreerEtudiant(pseudoAuteur);
            
            Message message = new Message();
            message.setContenu(contenu);
            message.setEtudiant(etudiant);
            
            entityManager.persist(message);
            entityManager.flush();
            
            transaction.commit();
            
            System.out.println("✅ Message sauvegardé - ID: " + message.getId() + ", Auteur: " + pseudoAuteur);
            return message;
            
        } catch (Exception e) {
            if (transaction.isActive()) {
                transaction.rollback();
            }
            System.err.println("❌ Erreur sauvegarde message: " + e.getMessage());
            throw new RuntimeException("Erreur lors de la sauvegarde du message: " + e.getMessage(), e);
        }
    }
    
    public List<Message> getDerniersMessages() {
        try {
            TypedQuery<Message> query = entityManager.createQuery(
                "SELECT m FROM Message m JOIN FETCH m.etudiant e ORDER BY m.dateEnvoi DESC", Message.class);
            
            query.setMaxResults(50);
            
            List<Message> messages = query.getResultList();
            System.out.println("📨 " + messages.size() + " messages chargés depuis la base");
            
            return messages;
            
        } catch (Exception e) {
            System.err.println("❌ Erreur chargement messages: " + e.getMessage());
            return List.of();
        }
    }
    
    public List<Etudiant> getAllEtudiants() {
        try {
            TypedQuery<Etudiant> query = entityManager.createQuery(
                "SELECT e FROM Etudiant e ORDER BY e.pseudo", Etudiant.class);
            
            List<Etudiant> etudiants = query.getResultList();
            System.out.println("👥 " + etudiants.size() + " étudiants chargés depuis la base");
            
            return etudiants;
            
        } catch (Exception e) {
            System.err.println("❌ Erreur chargement étudiants: " + e.getMessage());
            return List.of();
        }
    }
    
    private Etudiant trouverOuCreerEtudiant(String pseudo) {
        EntityTransaction transaction = entityManager.getTransaction();
        boolean transactionActive = transaction.isActive();
        
        try {
            if (!transactionActive) {
                transaction.begin();
            }
            
            TypedQuery<Etudiant> query = entityManager.createQuery(
                "SELECT e FROM Etudiant e WHERE e.pseudo = :pseudo", Etudiant.class);
            query.setParameter("pseudo", pseudo);
            
            List<Etudiant> resultats = query.getResultList();
            
            if (!resultats.isEmpty()) {
                return resultats.get(0);
            }
            
            System.out.println("👤 Création nouvel étudiant: " + pseudo);
            Etudiant nouvelEtudiant = new Etudiant();
            nouvelEtudiant.setPseudo(pseudo);
            
            entityManager.persist(nouvelEtudiant);
            entityManager.flush();
            
            if (!transactionActive) {
                transaction.commit();
            }
            
            System.out.println("✅ Nouvel étudiant créé avec ID: " + nouvelEtudiant.getId());
            return nouvelEtudiant;
            
        } catch (Exception e) {
            if (!transactionActive && transaction.isActive()) {
                transaction.rollback();
            }
            System.err.println("❌ Erreur recherche/création étudiant: " + e.getMessage());
            throw new RuntimeException("Erreur avec l'étudiant: " + pseudo, e);
        }
    }
    
    public void close() {
        try {
            if (entityManager != null && entityManager.isOpen()) {
                entityManager.close();
            }
            if (emf != null && emf.isOpen()) {
                emf.close();
            }
        } catch (Exception e) {
            System.err.println("⚠️ Erreur fermeture ressources: " + e.getMessage());
        }
    }
}