package com.univchat.test;

import com.univchat.entities.Etudiant;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;


public class TestDatabase {
    public static void main(String[] args) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("univchatPU");
        EntityManager em = emf.createEntityManager();

        em.getTransaction().begin();
        Etudiant e = new Etudiant();
        e.setPseudo("test2");
        e.setEmail("test2@gmail.com");
        e.setFiliere("Informatique");
        em.persist(e);
        em.getTransaction().commit();

        System.out.println("✅ Étudiant ajouté !");
        em.close();
        emf.close();
    }
}