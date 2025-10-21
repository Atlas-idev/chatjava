package com.univchat.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    // Configuration de la base de données
    private static final String DB_URL = "jdbc:postgresql://localhost:5432/univchat";
    private static final String DB_USER = "postgres";
    private static final String DB_PASSWORD = "121500*";

    // Bloc d'initialisation pour charger le driver
    static {
        try {
            Class.forName("org.postgresql.Driver");
            System.out.println("✅ Driver PostgreSQL chargé avec succès");
        } catch (ClassNotFoundException e) {
            System.err.println("❌ Erreur: Driver PostgreSQL non trouvé");
            throw new ExceptionInInitializerError(e);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String pseudo = request.getParameter("pseudo");
        String email = request.getParameter("email");
        String filiere = request.getParameter("filiere");
        
        System.out.println("📝 Tentative d'inscription - Pseudo: " + pseudo + ", Email: " + email + ", Filière: " + filiere);

        // Validation des données
        String validationError = validateUserData(pseudo, email, filiere);
        if (validationError != null) {
            System.err.println("❌ Validation échouée: " + validationError);
            response.sendRedirect("register.jsp?error=" + getErrorCode(validationError) + "&pseudo=" + (pseudo != null ? pseudo : "") + "&email=" + (email != null ? email : "") + "&filiere=" + (filiere != null ? filiere : ""));
            return;
        }
        
        pseudo = pseudo.trim();
        if (email != null && !email.trim().isEmpty()) {
            email = email.trim();
        } else {
            email = null;
        }
        
        if (filiere != null && !filiere.trim().isEmpty()) {
            filiere = filiere.trim();
        } else {
            filiere = null;
        }

        Connection conn = null;
        try {
            // Établir la connexion
            conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
            conn.setAutoCommit(false); // Pour gérer les transactions

            // Vérifier si le pseudo existe déjà
            if (isPseudoExists(conn, pseudo)) {
                System.err.println("❌ Pseudo déjà existant: " + pseudo);
                response.sendRedirect("register.jsp?error=pseudo_exists&pseudo=" + pseudo + "&email=" + (email != null ? email : "") + "&filiere=" + (filiere != null ? filiere : ""));
                return;
            }

            // Vérifier si l'email existe déjà (si fourni)
            if (email != null && isEmailExists(conn, email)) {
                System.err.println("❌ Email déjà existant: " + email);
                response.sendRedirect("register.jsp?error=email_exists&pseudo=" + pseudo + "&email=" + email + "&filiere=" + (filiere != null ? filiere : ""));
                return;
            }

            // Créer l'utilisateur en base
            int userId = createUser(conn, pseudo, email, filiere);
            
            if (userId > 0) {
                conn.commit(); // Valider la transaction
                
                // Stocker en session
                HttpSession session = request.getSession();
                session.setAttribute("userId", userId);
                session.setAttribute("pseudo", pseudo);
                session.setAttribute("email", email);
                session.setAttribute("filiere", filiere);
                session.setAttribute("isLoggedIn", true);
                session.setAttribute("loginTime", new java.util.Date());
                session.setAttribute("isNewUser", true);

                System.out.println("✅ Inscription réussie - ID: " + userId + ", Pseudo: " + pseudo);
                
                // Rediriger vers le chat
                response.sendRedirect("chat.jsp");
            } else {
                conn.rollback(); // Annuler en cas d'erreur
                System.err.println("❌ Échec de la création de l'utilisateur");
                response.sendRedirect("register.jsp?error=creation_failed&pseudo=" + pseudo + "&email=" + (email != null ? email : "") + "&filiere=" + (filiere != null ? filiere : ""));
            }

        } catch (SQLException e) {
            try {
                if (conn != null) conn.rollback();
            } catch (SQLException ex) {
                System.err.println("❌ Erreur lors du rollback: " + ex.getMessage());
            }
            System.err.println("❌ Erreur base de données: " + e.getMessage());
            e.printStackTrace();
            response.sendRedirect("register.jsp?error=database_error&pseudo=" + pseudo + "&email=" + (email != null ? email : "") + "&filiere=" + (filiere != null ? filiere : ""));
        } catch (Exception e) {
            System.err.println("❌ Erreur inattendue: " + e.getMessage());
            e.printStackTrace();
            response.sendRedirect("register.jsp?error=server_error&pseudo=" + pseudo + "&email=" + (email != null ? email : "") + "&filiere=" + (filiere != null ? filiere : ""));
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    System.err.println("❌ Erreur fermeture connexion: " + e.getMessage());
                }
            }
        }
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("register.jsp");
    }
    
    /**
     * Validation complète des données utilisateur
     */
    private String validateUserData(String pseudo, String email, String filiere) {
        // Validation pseudo
        if (pseudo == null || pseudo.trim().isEmpty()) {
            return "Le pseudo est requis";
        }
        
        String pseudoTrimmed = pseudo.trim();
        
        if (pseudoTrimmed.length() < 2) {
            return "Le pseudo doit contenir au moins 2 caracteres";
        }
        
        if (pseudoTrimmed.length() > 50) {
            return "Le pseudo ne peut pas depasser 50 caracteres";
        }
        
        // Caractères autorisés : lettres, chiffres, espaces, tirets, underscores, accents
        if (!pseudoTrimmed.matches("^[a-zA-Z0-9_\\-\\sÀ-ÿ]+$")) {
            return "Le pseudo contient des caracteres non autorises";
        }
        
        // Éviter les pseudos réservés (case insensitive)
        if (pseudoTrimmed.matches("^(?i)(admin|administrator|root|moderator|mod|system|test)$")) {
            return "Ce pseudo n'est pas autorise";
        }
        
        // Éviter les espaces multiples ou en début/fin
        if (!pseudoTrimmed.equals(pseudoTrimmed.replaceAll("\\s+", " "))) {
            return "Le pseudo ne peut pas contenir d'espaces multiples";
        }
        
        // Validation email si fourni
        if (email != null && !email.trim().isEmpty()) {
            String emailTrimmed = email.trim();
            
            if (emailTrimmed.length() > 100) {
                return "L'email ne peut pas depasser 100 caracteres";
            }
            
            if (!isValidEmail(emailTrimmed)) {
                return "Format d'email invalide";
            }
        }
        
        // Validation filière si fournie
        if (filiere != null && !filiere.trim().isEmpty()) {
            String filiereTrimmed = filiere.trim();
            if (filiereTrimmed.length() > 50) {
                return "La filiere ne peut pas depasser 50 caracteres";
            }
        }
        
        return null; // Aucune erreur
    }
    
    /**
     * Convertit un message d'erreur en code d'erreur pour l'URL
     */
    private String getErrorCode(String errorMessage) {
        switch(errorMessage) {
            case "Le pseudo est requis":
                return "pseudo_required";
            case "Le pseudo doit contenir au moins 2 caracteres":
                return "pseudo_too_short";
            case "Le pseudo ne peut pas depasser 50 caracteres":
                return "pseudo_too_long";
            case "Le pseudo contient des caracteres non autorises":
                return "invalid_chars";
            case "Ce pseudo n'est pas autorise":
                return "reserved_pseudo";
            case "Le pseudo ne peut pas contenir d'espaces multiples":
                return "multiple_spaces";
            case "L'email ne peut pas depasser 100 caracteres":
                return "email_too_long";
            case "Format d'email invalide":
                return "invalid_email";
            case "La filiere ne peut pas depasser 50 caracteres":
                return "filiere_too_long";
            default:
                return "validation_error";
        }
    }
    
    /**
     * Validation d'email avec regex plus robuste
     */
    private boolean isValidEmail(String email) {
        if (email == null) return false;
        String emailRegex = "^[a-zA-Z0-9_+&*-]+(?:\\.[a-zA-Z0-9_+&*-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,7}$";
        return email.matches(emailRegex);
    }
    
    /**
     * Vérifie si le pseudo existe déjà (case insensitive)
     */
    private boolean isPseudoExists(Connection conn, String pseudo) throws SQLException {
        String sql = "SELECT id FROM Etudiant WHERE LOWER(pseudo) = LOWER(?)";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, pseudo);
            try (ResultSet rs = stmt.executeQuery()) {
                return rs.next();
            }
        }
    }
    
    /**
     * Vérifie si l'email existe déjà (case insensitive)
     */
    private boolean isEmailExists(Connection conn, String email) throws SQLException {
        if (email == null) return false;
        
        String sql = "SELECT id FROM Etudiant WHERE LOWER(email) = LOWER(?)";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, email);
            try (ResultSet rs = stmt.executeQuery()) {
                return rs.next();
            }
        }
    }
    
    /**
     * Crée un nouvel utilisateur en base de données
     */
    private int createUser(Connection conn, String pseudo, String email, String filiere) throws SQLException {
        String sql = "INSERT INTO Etudiant (pseudo, email, filiere) VALUES (?, ?, ?) RETURNING id";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, pseudo);
            stmt.setString(2, email);
            stmt.setString(3, filiere);
            
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt("id");
                }
            }
        }
        return -1; // Échec
    }
}