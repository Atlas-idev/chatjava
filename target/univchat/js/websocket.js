class ChatWebSocket {
    constructor() {
        this.socket = null;
        this.isConnected = false;
        this.reconnectAttempts = 0;
        this.maxReconnectAttempts = 5;
        this.reconnectDelay = 3000;
        this.pseudo = document.body.getAttribute('data-pseudo');
        
        console.log('🚀 Initialisation ChatWebSocket pour:', this.pseudo);
        this.initialize();
    }

    initialize() {
        this.connect();
        this.setupEventListeners();
    }

    connect() {
        try {
            // Fermer la connexion existante si elle existe
            if (this.socket && this.socket.readyState === WebSocket.OPEN) {
                this.socket.close();
            }

            const protocol = window.location.protocol === 'https:' ? 'wss:' : 'ws:';
            const wsUrl = `${protocol}//${window.location.host}${window.location.pathname.replace(/\/[^\/]*$/, '')}/chat`;
            
            console.log('🔗 Connexion WebSocket vers:', wsUrl);
            
            this.socket = new WebSocket(wsUrl);
            
            this.socket.onopen = () => {
                console.log('✅ Connecté au serveur WebSocket');
                this.isConnected = true;
                this.reconnectAttempts = 0;
                this.updateConnectionStatus(true);
                
                // Envoyer la notification de connexion
                this.send({
                    type: 'user_join',
                    pseudo: this.pseudo
                });
            };
            
            this.socket.onmessage = (event) => {
                try {
                    const data = JSON.parse(event.data);
                    this.handleMessage(data);
                } catch (e) {
                    console.error('❌ Erreur parsing message:', e);
                }
            };
            
            this.socket.onclose = (event) => {
                console.log('🔚 Déconnexion WebSocket - Code:', event.code, 'Raison:', event.reason);
                this.isConnected = false;
                this.updateConnectionStatus(false);
                
                // Reconnexion seulement pour les fermetures non normales
                if (event.code !== 1000 && event.code !== 1001) {
                    this.attemptReconnect();
                }
            };
            
            this.socket.onerror = (error) => {
                console.error('💥 Erreur WebSocket:', error);
                this.isConnected = false;
            };
            
        } catch (error) {
            console.error('❌ Erreur initialisation WebSocket:', error);
            this.attemptReconnect();
        }
    }

    attemptReconnect() {
        if (this.reconnectAttempts < this.maxReconnectAttempts) {
            this.reconnectAttempts++;
            const delay = this.reconnectDelay * this.reconnectAttempts;
            
            console.log(`🔄 Tentative de reconnexion ${this.reconnectAttempts}/${this.maxReconnectAttempts} dans ${delay}ms`);
            
            this.updateConnectionStatus(false, `Reconnexion... (${this.reconnectAttempts}/${this.maxReconnectAttempts})`);
            
            setTimeout(() => {
                if (!this.isConnected) {
                    this.connect();
                }
            }, delay);
        } else {
            console.error('❌ Échec de reconnexion après plusieurs tentatives');
            this.updateConnectionStatus(false, 'Déconnecté - Veuillez rafraîchir la page');
        }
    }

    handleMessage(data) {
        console.log('📨 Message reçu:', data);
        
        switch(data.type) {
            case 'new_message':
                this.displayMessage(data);
                break;
            case 'user_joined':
                this.userJoined(data);
                break;
            case 'user_left':
                this.userLeft(data);
                break;
            case 'online_count':
                this.updateOnlineCount(data.count);
                break;
            case 'user_list':
                this.updateUserList(data.allUsers, data.onlineUsers);
                break;
            case 'error':
                this.showError(data.message);
                break;
        }
    }

    displayMessage(messageData) {
        const messagesContainer = document.getElementById('messagesContainer');
        if (!messagesContainer) return;

        // Supprimer le message de bienvenue si c'est le premier message réel
        if (messagesContainer.children.length === 1 && 
            messagesContainer.children[0].querySelector('h3')) {
            messagesContainer.innerHTML = '';
        }

        // Vérifier si le message existe déjà
        const existingMessage = document.querySelector(`[data-message-id="${messageData.id}"]`);
        if (existingMessage) return;

        const messageElement = this.createMessageElement(messageData);
        messagesContainer.appendChild(messageElement);
        
        // Scroll vers le bas
        messagesContainer.scrollTop = messagesContainer.scrollHeight;
    }

    createMessageElement(messageData) {
        const isCurrentUser = messageData.pseudo === this.pseudo;
        const avatarText = messageData.pseudo.substring(0, 1).toUpperCase();
        
        const colors = ['#6D5DCA', '#4ECDC4', '#FF6B6B', '#FFD166', '#06D6A0', '#118AB2'];
        const colorIndex = Math.abs(this.hashCode(messageData.pseudo)) % colors.length;
        const avatarColor = colors[colorIndex];
        
        const messageDiv = document.createElement('div');
        messageDiv.className = `message ${isCurrentUser ? 'message-sent' : 'message-received'}`;
        messageDiv.setAttribute('data-message-id', messageData.id);
        
        const messageDate = new Date(messageData.timestamp || messageData.dateEnvoi);
        const timeString = messageDate.toLocaleTimeString('fr-FR', { 
            hour: '2-digit', 
            minute: '2-digit' 
        });
        
        messageDiv.innerHTML = `
            <div class="message-avatar" style="background: ${avatarColor}">${avatarText}</div>
            <div class="message-content">
                <div class="message-header">
                    <span class="message-author">${this.escapeHtml(messageData.pseudo)}</span>
                    <span class="message-time">${timeString}</span>
                </div>
                <div class="message-text">${this.escapeHtml(messageData.contenu)}</div>
            </div>
        `;
        
        return messageDiv;
    }

    userJoined(data) {
        this.showNotification(`${data.pseudo} a rejoint le chat`, 'info');
        this.updateOnlineCount(data.onlineCount);
    }

    userLeft(data) {
        this.showNotification(`${data.pseudo} a quitté le chat`, 'info');
        this.updateOnlineCount(data.onlineCount);
    }

    updateOnlineCount(count) {
        const onlineCount = document.getElementById('onlineCount');
        if (onlineCount) onlineCount.textContent = `(${count} en ligne)`;
    }

    updateUserList(allUsers, onlineUsers) {
        const userList = document.getElementById('onlineUsers');
        if (!userList || !allUsers) return;

        // Trier les utilisateurs : en ligne d'abord, puis hors ligne
        const sortedUsers = allUsers.sort((a, b) => {
            const aOnline = onlineUsers.includes(a);
            const bOnline = onlineUsers.includes(b);
            if (aOnline && !bOnline) return -1;
            if (!aOnline && bOnline) return 1;
            return a.localeCompare(b);
        });

        userList.innerHTML = sortedUsers.map(user => {
            const isOnline = onlineUsers.includes(user);
            const isCurrentUser = user === this.pseudo;
            
            return `
                <li class="user-item ${isCurrentUser ? 'current-user' : ''}">
                    <div class="user-status ${isOnline ? 'online' : 'offline'}" 
                         style="background: ${isOnline ? '#10B981' : '#6B7280'}"></div>
                    <span style="color: ${isOnline ? 'var(--text-primary)' : 'var(--text-secondary)'}">
                        ${this.escapeHtml(user)} 
                        ${isCurrentUser ? ' (Vous)' : ''}
                    </span>
                </li>
            `;
        }).join('');

        // Mettre à jour les statistiques
        this.updateUserStats(allUsers.length, onlineUsers.length);
    }

    updateUserStats(totalUsers, onlineUsers) {
        const totalUsersElement = document.getElementById('totalUsers');
        const activeUsers = document.getElementById('activeUsers');
        
        if (totalUsersElement) totalUsersElement.textContent = totalUsers;
        if (activeUsers) activeUsers.textContent = onlineUsers;
    }

    updateConnectionStatus(connected, message = '') {
        const statusElement = document.getElementById('connectionStatus');
        if (statusElement) {
            if (connected) {
                statusElement.innerHTML = `
                    <span style="display: flex; align-items: center; gap: 5px;">
                        <span style="display: inline-block; width: 8px; height: 8px; background: #10B981; border-radius: 50%;"></span>
                        Connecté
                    </span>
                `;
            } else {
                const statusText = message || 'Déconnecté';
                statusElement.innerHTML = `
                    <span style="display: flex; align-items: center; gap: 5px;">
                        <span style="display: inline-block; width: 8px; height: 8px; background: #EF4444; border-radius: 50%;"></span>
                        ${statusText}
                    </span>
                `;
            }
        }
    }

    sendMessage(contenu) {
        if (!this.isConnected || !contenu.trim()) {
            if (!this.isConnected) {
                this.showNotification('Non connecté au chat', 'error');
            }
            return false;
        }

        try {
            this.send({
                type: 'message',
                pseudo: this.pseudo,
                contenu: contenu.trim()
            });
            
            console.log('📤 Message envoyé:', contenu);
            return true;
            
        } catch (error) {
            console.error('❌ Erreur envoi message:', error);
            this.showNotification('Erreur lors de l\'envoi du message', 'error');
            return false;
        }
    }

    send(data) {
        if (this.socket && this.isConnected && this.socket.readyState === WebSocket.OPEN) {
            this.socket.send(JSON.stringify(data));
        } else {
            console.error('❌ WebSocket non prêt pour l\'envoi - État:', this.socket ? this.socket.readyState : 'null');
            throw new Error('WebSocket non connecté');
        }
    }

    setupEventListeners() {
        const messageInput = document.getElementById('messageInput');
        const chatForm = document.getElementById('chatForm');
        
        if (messageInput && chatForm) {
            chatForm.addEventListener('submit', (e) => {
                e.preventDefault();
                const contenu = messageInput.value.trim();
                
                if (contenu) {
                    if (this.sendMessage(contenu)) {
                        messageInput.value = '';
                        this.updateCharCount();
                    }
                }
            });
            
            messageInput.addEventListener('input', () => {
                this.updateCharCount();
            });

            // Gestion de la touche Entrée
            messageInput.addEventListener('keydown', (e) => {
                if (e.key === 'Enter' && !e.shiftKey) {
                    e.preventDefault();
                    chatForm.dispatchEvent(new Event('submit'));
                }
            });
        }

        const clearChatBtn = document.getElementById('clearChat');
        if (clearChatBtn) {
            clearChatBtn.addEventListener('click', () => {
                if (confirm('Voulez-vous effacer l\'affichage du chat ? (Les messages restent en base de données)')) {
                    const messagesContainer = document.getElementById('messagesContainer');
                    if (messagesContainer) {
                        messagesContainer.innerHTML = `
                            <div style="text-align: center; color: var(--text-secondary); padding: 40px;">
                                <p>Affichage du chat effacé. Les nouveaux messages apparaîtront ici.</p>
                            </div>
                        `;
                    }
                }
            });
        }
    }

    updateCharCount() {
        const messageInput = document.getElementById('messageInput');
        const charCount = document.getElementById('charCount');
        
        if (messageInput && charCount) {
            const count = messageInput.value.length;
            charCount.textContent = count;
            
            // Changer la couleur selon le nombre de caractères
            if (count > 450) {
                charCount.style.color = '#EF4444';
            } else if (count > 400) {
                charCount.style.color = '#F59E0B';
            } else {
                charCount.style.color = 'var(--text-secondary)';
            }
        }
    }

    showNotification(message, type = 'info') {
        // Créer une notification toast
        const notification = document.createElement('div');
        notification.className = 'notification-toast';
        notification.style.cssText = `
            position: fixed;
            top: 20px;
            right: 20px;
            background: ${type === 'error' ? '#EF4444' : type === 'success' ? '#10B981' : '#6D5DCA'};
            color: white;
            padding: 12px 16px;
            border-radius: 8px;
            z-index: 10000;
            animation: slideInRight 0.3s ease;
            max-width: 300px;
            word-wrap: break-word;
            font-size: 14px;
        `;
        
        notification.textContent = message;
        document.body.appendChild(notification);
        
        // Supprimer après 4 secondes
        setTimeout(() => {
            notification.style.animation = 'slideOutRight 0.3s ease';
            setTimeout(() => {
                if (notification.parentNode) {
                    notification.parentNode.removeChild(notification);
                }
            }, 300);
        }, 4000);
    }

    showError(message) {
        this.showNotification(message, 'error');
    }

    // Utilitaires
    escapeHtml(text) {
        const div = document.createElement('div');
        div.textContent = text;
        return div.innerHTML;
    }

    hashCode(str) {
        let hash = 0;
        for (let i = 0; i < str.length; i++) {
            hash = str.charCodeAt(i) + ((hash << 5) - hash);
        }
        return hash;
    }

    disconnect() {
        if (this.socket) {
            this.socket.close(1000, 'Déconnexion normale');
        }
    }
}

// Initialiser le chat quand la page est chargée
document.addEventListener('DOMContentLoaded', function() {
    console.log('🎯 DOM chargé - Initialisation du chat');
    window.chatApp = new ChatWebSocket();
});

// Nettoyer à la déconnexion
window.addEventListener('beforeunload', function() {
    if (window.chatApp) {
        window.chatApp.disconnect();
    }
});

// Gestion des erreurs globales
window.addEventListener('error', function(e) {
    console.error('💥 Erreur globale:', e.error);
});