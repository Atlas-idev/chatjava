<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
// Définir l'encodage des caractères
response.setContentType("text/html; charset=UTF-8");
response.setCharacterEncoding("UTF-8");

// Récupérer les paramètres d'erreur et les données du formulaire
String error = request.getParameter("error");
String pseudoParam = request.getParameter("pseudo");
String emailParam = request.getParameter("email");
String filiereParam = request.getParameter("filiere");

// Messages d'erreur conviviaux
String errorMessage = "";
if (error != null) {
    switch(error) {
        case "pseudo_required":
            errorMessage = "Le pseudo est requis";
            break;
        case "pseudo_too_short":
            errorMessage = "Le pseudo doit contenir au moins 2 caractères";
            break;
        case "pseudo_too_long":
            errorMessage = "Le pseudo ne peut pas dépasser 50 caractères";
            break;
        case "invalid_chars":
            errorMessage = "Le pseudo contient des caractères non autorisés. Utilisez seulement des lettres, chiffres, espaces, tirets et underscores.";
            break;
        case "reserved_pseudo":
            errorMessage = "Ce pseudo n'est pas autorisé";
            break;
        case "multiple_spaces":
            errorMessage = "Le pseudo ne peut pas contenir d'espaces multiples";
            break;
        case "pseudo_exists":
            errorMessage = "Ce pseudo est déjà utilisé. Veuillez en choisir un autre.";
            break;
        case "email_too_long":
            errorMessage = "L'email ne peut pas dépasser 100 caractères";
            break;
        case "invalid_email":
            errorMessage = "Format d'email invalide";
            break;
        case "email_exists":
            errorMessage = "Cet email est déjà utilisé.";
            break;
        case "filiere_too_long":
            errorMessage = "La filière ne peut pas dépasser 50 caractères";
            break;
        case "creation_failed":
            errorMessage = "Erreur lors de la création du compte. Veuillez réessayer.";
            break;
        case "database_error":
            errorMessage = "Erreur de base de données. Veuillez réessayer.";
            break;
        case "server_error":
            errorMessage = "Erreur technique. Veuillez réessayer.";
            break;
        default:
            errorMessage = "Une erreur est survenue lors de l'inscription";
    }
}
%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inscription - Chat Université</title>
    <link rel="stylesheet" href="assets/css/style.css">
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
        <div class="card" style="width: 100%; max-width: 480px;">
            <div class="card-header">
                <h2 style="font-size: 2rem; margin-bottom: 8px;">Rejoignez-nous</h2>
                <p style="opacity: 0.9; font-size: 1.1rem;">Créez votre compte étudiant</p>
            </div>
            <div class="card-body">
                <%-- Affichage des erreurs --%>
                <% if (!errorMessage.isEmpty()) { %>
                    <div style="background: var(--error); color: white; padding: 12px; border-radius: 8px; margin-bottom: 20px; font-size: 14px;">
                        <%= errorMessage %>
                    </div>
                <% } %>

                <form action="RegisterServlet" method="post" id="registerForm">
                    <div class="form-group">
                        <label for="pseudo" class="form-label">Pseudo *</label>
                        <input type="text" id="pseudo" name="pseudo" class="form-control" 
                               placeholder="Choisissez un pseudo unique" required
                               value="<%= pseudoParam != null ? pseudoParam : "" %>">
                        <small style="color: var(--text-secondary); font-size: 12px; display: block; margin-top: 8px;">
                            ⚡ 2-50 caractères (lettres, chiffres, espaces, tirets, underscores)
                        </small>
                    </div>
                    
                    <div class="form-group">
                        <label for="email" class="form-label">Email Universitaire</label>
                        <input type="email" id="email" name="email" class="form-control" 
                               placeholder="prenom.nom@universite.fr"
                               value="<%= emailParam != null ? emailParam : "" %>">
                        <small style="color: var(--text-secondary); font-size: 12px; display: block; margin-top: 8px;">
                            📧 Optionnel - pour les notifications importantes
                        </small>
                    </div>

                    <div class="form-group">
                        <label for="filiere" class="form-label">Filière</label>
                        <select id="filiere" name="filiere" class="form-control">
                            <option value="">Sélectionnez votre filière</option>
                            <option value="informatique" <%= "informatique".equals(filiereParam) ? "selected" : "" %>>Informatique</option>
                            <option value="mathematiques" <%= "mathematiques".equals(filiereParam) ? "selected" : "" %>>Mathématiques</option>
                            <option value="physique" <%= "physique".equals(filiereParam) ? "selected" : "" %>>Physique</option>
                            <option value="biologie" <%= "biologie".equals(filiereParam) ? "selected" : "" %>>Biologie</option>
                            <option value="economie" <%= "economie".equals(filiereParam) ? "selected" : "" %>>Économie</option>
                            <option value="droit" <%= "droit".equals(filiereParam) ? "selected" : "" %>>Droit</option>
                            <option value="lettres" <%= "lettres".equals(filiereParam) ? "selected" : "" %>>Lettres</option>
                            <option value="autres" <%= "autres".equals(filiereParam) ? "selected" : "" %>>Autres</option>
                        </select>
                    </div>
                    
                    <button type="submit" class="btn btn-primary" style="width: 100%; margin-top: 10px;">
                        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                            <path d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
                            <circle cx="8.5" cy="7" r="4"></circle>
                            <line x1="20" y1="8" x2="20" y2="14"></line>
                            <line x1="23" y1="11" x2="17" y2="11"></line>
                        </svg>
                        Créer mon compte
                    </button>
                </form>
                
                <div style="text-align: center; margin-top: 30px; padding-top: 30px; border-top: 1px solid rgba(255, 255, 255, 0.1);">
                    <p style="color: var(--text-secondary); margin-bottom: 20px; font-size: 1.1rem;">
                        Déjà membre ?
                    </p>
                    <a href="login.jsp" class="btn btn-secondary" style="width: 100%;">
                        Se connecter
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
        document.getElementById('registerForm').addEventListener('submit', function(e) {
            const pseudo = document.getElementById('pseudo').value.trim();
            const email = document.getElementById('email').value.trim();
            
            // Validation côté client
            if (pseudo.length < 2) {
                e.preventDefault();
                showNotification('Le pseudo doit contenir au moins 2 caractères', 'error');
                document.getElementById('pseudo').focus();
                return;
            }
            
            if (pseudo.length > 50) {
                e.preventDefault();
                showNotification('Le pseudo ne peut pas dépasser 50 caractères', 'error');
                document.getElementById('pseudo').focus();
                return;
            }
            
            // Validation des caractères autorisés
            if (!pseudo.match(/^[a-zA-Z0-9_\-\sÀ-ÿ]+$/)) {
                e.preventDefault();
                showNotification('Le pseudo contient des caractères non autorisés. Utilisez seulement des lettres, chiffres, espaces, tirets et underscores.', 'error');
                document.getElementById('pseudo').focus();
                return;
            }
            
            // Éviter les pseudos réservés
            const reservedPseudos = ['admin', 'administrator', 'root', 'moderator', 'mod', 'system', 'test'];
            if (reservedPseudos.includes(pseudo.toLowerCase())) {
                e.preventDefault();
                showNotification('Ce pseudo n\'est pas autorisé', 'error');
                document.getElementById('pseudo').focus();
                return;
            }
            
            if (email && !isValidEmail(email)) {
                e.preventDefault();
                showNotification('Veuillez entrer une adresse email valide', 'error');
                document.getElementById('email').focus();
                return;
            }
        });
        
        function isValidEmail(email) {
            const emailRegex = /^[a-zA-Z0-9_+&*-]+(?:\.[a-zA-Z0-9_+&*-]+)*@(?:[a-zA-Z0-9-]+\.)+[a-zA-Z]{2,7}$/;
            return emailRegex.test(email);
        }

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

        // Animation des éléments du formulaire
        document.querySelectorAll('.form-control').forEach((input, index) => {
            input.style.opacity = '0';
            input.style.transform = 'translateY(20px)';
            
            setTimeout(() => {
                input.style.transition = 'all 0.6s cubic-bezier(0.4, 0, 0.2, 1)';
                input.style.opacity = '1';
                input.style.transform = 'translateY(0)';
            }, index * 100 + 300);
        });

        // Afficher les notifications d'erreur depuis les paramètres URL
        window.addEventListener('DOMContentLoaded', function() {
            const urlParams = new URLSearchParams(window.location.search);
            const error = urlParams.get('error');
            
            if (error) {
                let message = '';
                switch(error) {
                    case 'pseudo_required':
                        message = 'Le pseudo est requis';
                        break;
                    case 'pseudo_too_short':
                        message = 'Le pseudo doit contenir au moins 2 caractères';
                        break;
                    case 'pseudo_too_long':
                        message = 'Le pseudo ne peut pas dépasser 50 caractères';
                        break;
                    case 'invalid_chars':
                        message = 'Le pseudo contient des caractères non autorisés';
                        break;
                    case 'reserved_pseudo':
                        message = 'Ce pseudo n\'est pas autorisé';
                        break;
                    case 'pseudo_exists':
                        message = 'Ce pseudo est déjà utilisé';
                        break;
                    case 'email_exists':
                        message = 'Cet email est déjà utilisé';
                        break;
                }
                if (message) {
                    showNotification(message, 'error');
                }
            }
        });
    </script>
</body>
</html>