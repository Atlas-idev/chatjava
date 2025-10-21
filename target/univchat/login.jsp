<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
// Définir l'encodage des caractères
response.setContentType("text/html; charset=UTF-8");
response.setCharacterEncoding("UTF-8");

// Gestion de la connexion directement dans la JSP
if ("POST".equalsIgnoreCase(request.getMethod())) {
    String pseudo = request.getParameter("pseudo");
    
    if (pseudo != null && pseudo.trim().length() >= 2) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        
        try {
            // Configuration de la base de données
            String dbUrl = "jdbc:postgresql://localhost:5432/univchat";
            String dbUser = "postgres";
            String dbPassword = "121500*";
            
            // Établir la connexion
            conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword);
            
            // Vérifier si l'utilisateur existe en base de données
            String sql = "SELECT id, pseudo, email, filiere FROM Etudiant WHERE LOWER(pseudo) = LOWER(?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, pseudo.trim());
            rs = stmt.executeQuery();
            
            if (rs.next()) {
                // Utilisateur trouvé - stocker les infos en session
                session.setAttribute("userId", rs.getInt("id"));
                session.setAttribute("pseudo", rs.getString("pseudo"));
                session.setAttribute("email", rs.getString("email"));
                session.setAttribute("filiere", rs.getString("filiere"));
                session.setAttribute("isLoggedIn", true);
                session.setAttribute("loginTime", new java.util.Date());
                
                System.out.println("✅ Connexion réussie: " + pseudo);
                
                // Rediriger vers le chat
                response.sendRedirect("chat.jsp");
                return;
            } else {
                // Utilisateur non trouvé
                request.setAttribute("error", "Utilisateur non trouvé. Veuillez vous inscrire.");
                System.err.println("❌ Utilisateur non trouvé: " + pseudo);
            }
            
        } catch (SQLException e) {
            System.err.println("❌ Erreur SQL: " + e.getMessage());
            request.setAttribute("error", "Erreur de connexion à la base de données");
        } catch (Exception e) {
            System.err.println("❌ Erreur inattendue: " + e.getMessage());
            request.setAttribute("error", "Erreur technique lors de la connexion");
        } finally {
            // Fermer les ressources
            if (rs != null) {
                try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
            }
            if (stmt != null) {
                try { stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
            }
            if (conn != null) {
                try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
            }
        }
    } else {
        request.setAttribute("error", "Le pseudo doit contenir au moins 2 caractères");
    }
}
%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Connexion - Chat Université</title>
    <link rel="stylesheet" href="assets/css/style.css">
    <script src="js/websocket.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>
<body>
    <!-- Étoiles animées en fond -->
    <div class="stars-container">
        <div class="star"></div>
        <div class="star"></div>
        <div class="star"></div>
        <div class="star"></div>
        <div class="star"></div>
        <div class="star"></div>
    </div>

    <div class="container">
        <div class="card" style="width: 100%; max-width: 440px;">
            <div class="card-header">
                <h2 style="font-size: 2rem; margin-bottom: 8px;">Content de vous revoir</h2>
                <p style="opacity: 0.9; font-size: 1.1rem;">Accédez à votre espace de chat</p>
            </div>
            <div class="card-body">
                <%-- Affichage des erreurs --%>
                <% if (request.getAttribute("error") != null) { %>
                    <div style="background: var(--error); color: white; padding: 12px; border-radius: 8px; margin-bottom: 20px; font-size: 14px;">
                        <%= request.getAttribute("error") %>
                    </div>
                <% } %>
                
                <%-- Affichage des messages de succès/déconnexion --%>
                <% 
                String message = request.getParameter("message");
                if (message != null) { 
                    String messageType = "success";
                    String messageText = "";
                    
                    if ("logout".equals(message)) {
                        messageText = "Vous avez été déconnecté avec succès";
                    } else if ("registered".equals(message)) {
                        messageText = "Inscription réussie ! Vous pouvez maintenant vous connecter";
                        messageType = "success";
                    }
                %>
                    <div style="background: var(--success); color: white; padding: 12px; border-radius: 8px; margin-bottom: 20px; font-size: 14px;">
                        <%= messageText %>
                    </div>
                <% } %>

                <form method="post" id="loginForm">
                    <div class="form-group">
                        <label for="pseudo" class="form-label">Votre Pseudo</label>
                        <input type="text" id="pseudo" name="pseudo" class="form-control" 
                               placeholder="Entrez votre pseudo" required autofocus
                               value="<%= request.getParameter("pseudo") != null ? request.getParameter("pseudo") : "" %>">
                    </div>
                    
                    <button type="submit" class="btn btn-primary" style="width: 100%; margin-top: 10px;">
                        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                            <path d="M15 3h4a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2h-4"></path>
                            <polyline points="10 17 15 12 10 7"></polyline>
                            <line x1="15" y1="12" x2="3" y2="12"></line>
                        </svg>
                        Se connecter
                    </button>
                </form>
                
                <div style="text-align: center; margin-top: 30px; padding-top: 30px; border-top: 1px solid rgba(255, 255, 255, 0.1);">
                    <p style="color: var(--text-secondary); margin-bottom: 20px; font-size: 1.1rem;">
                        Nouveau sur la plateforme ?
                    </p>
                    <a href="register.jsp" class="btn btn-secondary" style="width: 100%;">
                        Créer un compte
                    </a>
                </div>
                
                <div style="text-align: center; margin-top: 20px;">
                    <a href="index.jsp" style="color: var(--text-secondary); text-decoration: none; font-size: 14px; display: inline-flex; align-items: center; gap: 5px;">
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                            <path d="M19 12H5M12 19l-7-7 7-7"></path>
                        </svg>
                        Retour à l'accueil
                    </a>
                </div>
            </div>
        </div>
    </div>

    <script>
        document.getElementById('loginForm').addEventListener('submit', function(e) {
            const pseudo = document.getElementById('pseudo').value.trim();
            if (pseudo.length < 2) {
                e.preventDefault();
                showNotification('Le pseudo doit contenir au moins 2 caractères', 'error');
            }
        });

        function showNotification(message, type = 'info') {
            // Supprimer les notifications existantes
            const existingNotifications = document.querySelectorAll('.notification');
            existingNotifications.forEach(notif => notif.remove());
            
            const notification = document.createElement('div');
            notification.className = 'notification';
            notification.textContent = message;
            notification.style.background = type === 'error' ? 'var(--error)' : 'var(--success)';
            notification.style.color = 'white';
            notification.style.position = 'fixed';
            notification.style.top = '20px';
            notification.style.right = '20px';
            notification.style.padding = '12px 16px';
            notification.style.borderRadius = '8px';
            notification.style.zIndex = '1000';
            notification.style.opacity = '0';
            notification.style.transform = 'translateX(100px)';
            notification.style.transition = 'all 0.3s ease';
            
            document.body.appendChild(notification);
            
            // Animation d'entrée
            setTimeout(() => {
                notification.style.opacity = '1';
                notification.style.transform = 'translateX(0)';
            }, 100);
            
            // Suppression après 5 secondes
            setTimeout(() => {
                notification.style.opacity = '0';
                notification.style.transform = 'translateX(100px)';
                setTimeout(() => {
                    if (notification.parentNode) {
                        notification.parentNode.removeChild(notification);
                    }
                }, 300);
            }, 5000);
        }

        // Animation des inputs
        document.querySelectorAll('.form-control').forEach(input => {
            input.addEventListener('focus', function() {
                this.parentElement.style.transform = 'translateY(-2px)';
            });
            
            input.addEventListener('blur', function() {
                this.parentElement.style.transform = 'translateY(0)';
            });
        });
    </script>
</body>
</html>