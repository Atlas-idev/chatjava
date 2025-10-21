package com.univchat.websocket;

import com.univchat.services.MessageService;
import com.univchat.entities.Message;
import com.univchat.entities.Etudiant;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

import jakarta.websocket.*;
import jakarta.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.util.*;
import java.util.concurrent.ConcurrentHashMap;
import java.util.stream.Collectors;

@ServerEndpoint("/chat")
public class ChatWebSocket {
    private static final Set<Session> sessions = Collections.synchronizedSet(new HashSet<>());
    private static final ConcurrentHashMap<String, String> userSessions = new ConcurrentHashMap<>();
    private static final MessageService messageService = new MessageService();
    private static final Gson gson = new Gson();
    
    @OnOpen
    public void onOpen(Session session) {
        sessions.add(session);
        System.out.println("✅ Nouvelle connexion WebSocket: " + session.getId());
        broadcastOnlineCount();
        broadcastAllUsers();
    }
    
    @OnMessage
    public void onMessage(String message, Session session) {
        try {
            JsonObject json = gson.fromJson(message, JsonObject.class);
            String type = json.get("type").getAsString();
            
            switch (type) {
                case "message":
                    handleNewMessage(json, session);
                    break;
                case "user_join":
                    handleUserJoin(json, session);
                    break;
                case "get_history":
                    sendMessageHistory(session);
                    break;
                default:
                    System.out.println("⚠️ Type de message inconnu: " + type);
            }
            
        } catch (Exception e) {
            System.err.println("❌ Erreur traitement message: " + e.getMessage());
            sendError(session, "Erreur: " + e.getMessage());
        }
    }
    
    @OnClose
    public void onClose(Session session) {
        sessions.remove(session);
        String pseudo = userSessions.get(session.getId());
        if (pseudo != null) {
            userSessions.remove(session.getId());
            notifyUserLeft(pseudo);
        }
        System.out.println("🔚 Déconnexion WebSocket: " + session.getId());
        broadcastOnlineCount();
        broadcastAllUsers();
    }
    
    @OnError
    public void onError(Session session, Throwable error) {
        System.err.println("💥 Erreur WebSocket: " + error.getMessage());
    }
    
    private void handleNewMessage(JsonObject json, Session session) {
        String pseudo = json.get("pseudo").getAsString();
        String contenu = json.get("contenu").getAsString().trim();
        
        if (contenu.isEmpty()) {
            sendError(session, "Le message ne peut pas être vide");
            return;
        }
        
        try {
            // Sauvegarder en base
            Message message = messageService.enregistrerMessage(contenu, pseudo);
            
            // Préparer la réponse
            JsonObject response = new JsonObject();
            response.addProperty("type", "new_message");
            response.addProperty("id", message.getId());
            response.addProperty("contenu", message.getContenu());
            response.addProperty("pseudo", pseudo);
            response.addProperty("dateEnvoi", message.getDateEnvoi().toString());
            response.addProperty("timestamp", new Date().getTime());
            
            // Diffuser à tous les clients
            broadcastMessage(response.toString());
            
            System.out.println("📨 Message diffusé: " + pseudo + " - " + contenu);
            
        } catch (Exception e) {
            sendError(session, "Erreur lors de l'envoi: " + e.getMessage());
        }
    }
    
    private void handleUserJoin(JsonObject json, Session session) {
        String pseudo = json.get("pseudo").getAsString();
        userSessions.put(session.getId(), pseudo);
        
        // Notifier les autres utilisateurs
        notifyUserJoined(pseudo);
        
        // Envoyer l'historique des messages
        sendMessageHistory(session);
        
        System.out.println("👤 Utilisateur connecté: " + pseudo);
    }
    
    private void sendMessageHistory(Session session) {
        try {
            List<Message> messages = messageService.getDerniersMessages();
            
            // Inverser pour avoir les plus anciens en premier
            Collections.reverse(messages);
            
            for (Message message : messages) {
                JsonObject msgJson = new JsonObject();
                msgJson.addProperty("type", "new_message");
                msgJson.addProperty("id", message.getId());
                msgJson.addProperty("contenu", message.getContenu());
                msgJson.addProperty("pseudo", message.getAuteurPseudo());
                msgJson.addProperty("dateEnvoi", message.getDateEnvoi().toString());
                msgJson.addProperty("timestamp", message.getDateEnvoi().toInstant(java.time.ZoneOffset.UTC).toEpochMilli());
                
                sendMessage(session, msgJson.toString());
            }
            
            System.out.println("📚 Historique envoyé (" + messages.size() + " messages)");
            
        } catch (Exception e) {
            System.err.println("❌ Erreur envoi historique: " + e.getMessage());
        }
    }
    
    private void notifyUserJoined(String pseudo) {
        JsonObject notification = new JsonObject();
        notification.addProperty("type", "user_joined");
        notification.addProperty("pseudo", pseudo);
        notification.addProperty("onlineCount", sessions.size());
        
        broadcastMessage(notification.toString());
        broadcastAllUsers();
    }
    
    private void notifyUserLeft(String pseudo) {
        JsonObject notification = new JsonObject();
        notification.addProperty("type", "user_left");
        notification.addProperty("pseudo", pseudo);
        notification.addProperty("onlineCount", sessions.size());
        
        broadcastMessage(notification.toString());
        broadcastAllUsers();
    }
    
    private void broadcastOnlineCount() {
        JsonObject countMessage = new JsonObject();
        countMessage.addProperty("type", "online_count");
        countMessage.addProperty("count", sessions.size());
        
        broadcastMessage(countMessage.toString());
    }
    
    private void broadcastAllUsers() {
        try {
            // Récupérer tous les étudiants de la base
            List<Etudiant> allEtudiants = messageService.getAllEtudiants();
            List<String> allUsers = allEtudiants.stream()
                .map(Etudiant::getPseudo)
                .collect(Collectors.toList());
            
            // Récupérer les utilisateurs en ligne
            List<String> onlineUsers = new ArrayList<>(userSessions.values());
            
            JsonObject userListMessage = new JsonObject();
            userListMessage.addProperty("type", "user_list");
            userListMessage.add("allUsers", gson.toJsonTree(allUsers));
            userListMessage.add("onlineUsers", gson.toJsonTree(onlineUsers));
            
            broadcastMessage(userListMessage.toString());
            
            System.out.println("👥 Liste utilisateurs envoyée: " + allUsers.size() + " total, " + onlineUsers.size() + " en ligne");
            
        } catch (Exception e) {
            System.err.println("❌ Erreur envoi liste utilisateurs: " + e.getMessage());
        }
    }
    
    private void broadcastMessage(String message) {
        synchronized (sessions) {
            for (Session s : sessions) {
                if (s.isOpen()) {
                    try {
                        s.getBasicRemote().sendText(message);
                    } catch (IOException e) {
                        System.err.println("❌ Erreur diffusion: " + e.getMessage());
                    }
                }
            }
        }
    }
    
    private void sendMessage(Session session, String message) {
        if (session.isOpen()) {
            try {
                session.getBasicRemote().sendText(message);
            } catch (IOException e) {
                System.err.println("❌ Erreur envoi: " + e.getMessage());
            }
        }
    }
    
    private void sendError(Session session, String error) {
        JsonObject errorJson = new JsonObject();
        errorJson.addProperty("type", "error");
        errorJson.addProperty("message", error);
        
        sendMessage(session, errorJson.toString());
    }
}