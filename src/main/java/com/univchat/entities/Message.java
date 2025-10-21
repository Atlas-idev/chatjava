package com.univchat.entities;

import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "message")
public class Message {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Column(nullable = false, columnDefinition = "TEXT")
    private String contenu;
    
    @Column(name = "date_envoi")
    private LocalDateTime dateEnvoi;
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "etudiant_id")
    private Etudiant etudiant;
    
    // Constructeurs
    public Message() {
        this.dateEnvoi = LocalDateTime.now();
    }
    
    public Message(String contenu, Etudiant etudiant) {
        this();
        this.contenu = contenu;
        this.etudiant = etudiant;
    }
    
    // Getters et Setters
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }
    
    public String getContenu() { return contenu; }
    public void setContenu(String contenu) { this.contenu = contenu; }
    
    public LocalDateTime getDateEnvoi() { return dateEnvoi; }
    public void setDateEnvoi(LocalDateTime dateEnvoi) { this.dateEnvoi = dateEnvoi; }
    
    public Etudiant getEtudiant() { return etudiant; }
    public void setEtudiant(Etudiant etudiant) { this.etudiant = etudiant; }
    
    // Méthode utilitaire pour obtenir le pseudo de l'étudiant
    public String getAuteurPseudo() {
        return etudiant != null ? etudiant.getPseudo() : "Anonyme";
    }
    
    @Override
    public String toString() {
        return "Message{id=" + id + ", contenu='" + contenu + "', auteur='" + getAuteurPseudo() + "', date=" + dateEnvoi + "}";
    }
}