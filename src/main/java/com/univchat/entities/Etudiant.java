package com.univchat.entities;

import jakarta.persistence.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "etudiant")
public class Etudiant {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Column(unique = true, nullable = false, length = 50)
    private String pseudo;
    
    @Column(length = 100)
    private String email;
    
    @Column(length = 50)
    private String filiere;
    
    @Column(name = "date_inscription")
    private LocalDateTime dateInscription;
    
    @OneToMany(mappedBy = "etudiant", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<Message> messages = new ArrayList<>();
    
    // Constructeurs
    public Etudiant() {
        this.dateInscription = LocalDateTime.now();
    }
    
    public Etudiant(String pseudo, String email, String filiere) {
        this();
        this.pseudo = pseudo;
        this.email = email;
        this.filiere = filiere;
    }
    
    // Getters et Setters
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }
    
    public String getPseudo() { return pseudo; }
    public void setPseudo(String pseudo) { this.pseudo = pseudo; }
    
    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }
    
    public String getFiliere() { return filiere; }
    public void setFiliere(String filiere) { this.filiere = filiere; }
    
    public LocalDateTime getDateInscription() { return dateInscription; }
    public void setDateInscription(LocalDateTime dateInscription) { this.dateInscription = dateInscription; }
    
    public List<Message> getMessages() { return messages; }
    public void setMessages(List<Message> messages) { this.messages = messages; }
    
    // Méthode utilitaire
    public void addMessage(Message message) {
        messages.add(message);
        message.setEtudiant(this);
    }
    
    @Override
    public String toString() {
        return "Etudiant{id=" + id + ", pseudo='" + pseudo + "', email='" + email + "', filiere='" + filiere + "'}";
    }
}