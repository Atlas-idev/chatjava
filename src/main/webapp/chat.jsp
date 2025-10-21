<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%
    String pseudo = (String) session.getAttribute("pseudo");
    if (pseudo == null) {
        response.sendRedirect("login.jsp");
        return;
    }
    
    // Générer un avatar basé sur la première lettre du pseudo
    String avatarText = pseudo.substring(0, 1).toUpperCase();
    
    // Couleur d'avatar basée sur le hash du pseudo
    String[] avatarColors = {"#6D5DCA", "#4ECDC4", "#FF6B6B", "#FFD166", "#06D6A0", "#118AB2"};
    int colorIndex = Math.abs(pseudo.hashCode()) % avatarColors.length;
    String avatarColor = avatarColors[colorIndex];
    
    // Récupérer les informations optionnelles
    String email = (String) session.getAttribute("email");
    String filiere = (String) session.getAttribute("filiere");
    Boolean isNewUser = (Boolean) session.getAttribute("isNewUser");
%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chat Université - Salon de discussion </title>
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>
<body data-pseudo="<%= pseudo %>">
    <!-- Étoiles animées en fond -->
    <div class="stars-container">
        <div class="star"></div>
        <div class="star"></div>
        <div class="star"></div>
        <div class="star"></div>
        <div class="star"></div>
        <div class="star"></div>
    </div>

    <div class="chat-container">
        <!-- Sidebar -->
        <div class="chat-sidebar">
            <div class="user-info">
                <div class="user-avatar" style="background: <%= avatarColor %>;">
                    <%= avatarText %>
                </div>

                <h3 style="margin-bottom: 5px; color: var(--text-primary);"><%= pseudo %></h3>
                <p style="color: var(--success); font-size: 14px; font-weight: 500; display: flex; align-items: center; justify-content: center; gap: 5px;">
                    <span style="display: inline-block; width: 8px; height: 8px; background: var(--success); border-radius: 50%;"></span>
                    En ligne
                </p>
                <% if (filiere != null) { %>
                    <p style="color: var(--text-secondary); font-size: 12px; margin-top: 5px;">
                        <%= filiere %>
                    </p>
                <% } %>
                <% if (email != null) { %>
                    <p style="color: var(--text-secondary); font-size: 12px;">
                        <%= email %>
                    </p>
                <% } %>
            </div>
            
            <div class="online-users">
                <h3 style="color: var(--text-primary); margin-bottom: 15px; display: flex; align-items: center; justify-content: space-between;">
                    <span>Tous les étudiants</span>
                    <span id="onlineCount" style="color: var(--text-secondary); font-size: 14px; font-weight: normal;">(0 en ligne)</span>
                </h3>
                <ul class="user-list" id="onlineUsers">
                    <li class="user-item">
                        <div class="user-status"></div>
                        <span style="color: var(--text-secondary);">Chargement...</span>
                    </li>
                </ul>
            </div>

            <div style="margin-top: auto; padding-top: 20px; border-top: 1px solid rgba(255, 255, 255, 0.1);">
                <!-- Statistiques -->
                <div style="background: rgba(255, 255, 255, 0.05); padding: 15px; border-radius: 12px; margin-bottom: 15px;">
                    <h4 style="margin-bottom: 12px; color: var(--text-primary); font-size: 14px; display: flex; align-items: center; gap: 8px;">
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                            <path d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path>
                        </svg>
                        Statistiques
                    </h4>
                    <div style="display: flex; justify-content: space-between; font-size: 12px; color: var(--text-secondary); margin-bottom: 6px;">
                        <span>Total étudiants:</span>
                        <span id="totalUsers" style="color: var(--primary-light); font-weight: 600;">0</span>
                    </div>
                    <div style="display: flex; justify-content: space-between; font-size: 12px; color: var(--text-secondary);">
                        <span>En ligne:</span>
                        <span id="activeUsers" style="color: var(--primary-light); font-weight: 600;">0</span>
                    </div>
                </div>
                
                <!-- Actions -->
                <div style="display: flex; flex-direction: column; gap: 10px;">
                    <button id="clearChat" class="btn btn-secondary" style="width: 100%; justify-content: center;">
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                            <path d="M3 6h18M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path>
                        </svg>
                        Effacer le chat
                    </button>
                    
                    <a href="logout.jsp" class="btn btn-secondary" style="width: 100%; justify-content: center;">
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                            <path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path>
                            <polyline points="16 17 21 12 16 7"></polyline>
                            <line x1="21" y1="12" x2="9" y2="12"></line>
                        </svg>
                        Déconnexion
                    </a>
                </div>
            </div>
        </div>
        
        <!-- Zone principale de chat -->
        <div class="chat-main">
            <!-- En-tête -->
            <div style="padding: 20px 25px; border-bottom: 1px solid rgba(255, 255, 255, 0.1); background: rgba(30, 41, 59, 0.8); backdrop-filter: blur(10px);">
                <div style="display: flex; align-items: center; justify-content: space-between;">
                    <div>
                        <h2 style="color: var(--text-primary); margin-bottom: 4px; font-size: 1.5rem; display: flex; align-items: center; gap: 10px;">
                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                                <path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path>
                            </svg>
                            Chat Université
                        </h2>
                        <p style="color: var(--text-secondary); font-size: 14px; display: flex; align-items: center; gap: 8px;">
                            <span id="connectionStatus" style="display: flex; align-items: center; gap: 5px;">
                                <span style="display: inline-block; width: 8px; height: 8px; background: var(--success); border-radius: 50%;"></span>
                                Connecté
                            </span>
                            <span style="color: var(--text-secondary); opacity: 0.6;">•</span>
                            <span>Salon principal</span>
                        </p>
                    </div>
                </div>
            </div>
            
            <!-- Messages -->
            <div class="messages-container" id="messagesContainer">
                <div style="text-align: center; color: var(--text-secondary); padding: 40px;">
                    <div style="width: 80px; height: 80px; background: var(--gradient-primary); border-radius: 50%; margin: 0 auto 20px; display: flex; align-items: center; justify-content: center;">
                        <svg width="40" height="40" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                            <path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path>
                        </svg>
                    </div>
                    <h3 style="margin-bottom: 10px; color: var(--text-primary);">Bienvenue sur le chat ! 👋</h3>
                    <p>La conversation commence ici. Envoyez votre premier message.</p>
                </div>
            </div>
            
            <!-- Formulaire d'envoi -->
            <form class="message-form" id="chatForm">
                <div class="message-input-group">
                    <input type="text" id="messageInput" class="message-input" 
                          placeholder="Tapez votre message..." 
                          required maxlength="500" autocomplete="off">
                    <button type="submit" class="send-btn" id="sendButton">
                        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                            <line x1="22" y1="2" x2="11" y2="13"></line>
                            <polygon points="22 2 15 22 11 13 2 9 22 2"></polygon>
                        </svg>
                    </button>
                </div>
                <div style="display: flex; justify-content: space-between; margin-top: 10px;">
                    <small style="color: var(--text-secondary); font-size: 12px;">
                        Appuyez sur Entrée pour envoyer
                    </small>
                    <small style="color: var(--text-secondary); font-size: 12px;">
                        <span id="charCount">0</span>/500 caractères
                    </small>
                </div>
            </form>
        </div>
    </div>

    <!-- Script WebSocket -->
    <script src="js/websocket.js"></script>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            console.log('🚀 Page chat initialisée');
            
            // Focus automatique sur le champ message
            const messageInput = document.getElementById('messageInput');
            if (messageInput) {
                setTimeout(() => {
                    messageInput.focus();
                }, 500);
            }
        });
    </script>
</body>
</html>