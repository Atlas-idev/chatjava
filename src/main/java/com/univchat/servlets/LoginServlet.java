package com.univchat.servlets;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String pseudo = request.getParameter("pseudo");
        
        System.out.println("🔐 Tentative de connexion: " + pseudo);
        
        // Validation basique
        if (pseudo == null || pseudo.trim().isEmpty() || pseudo.length() < 2) {
            System.err.println("❌ Pseudo invalide: " + pseudo);
            response.sendRedirect("login.jsp?error=invalid_pseudo");
            return;
        }
        
        pseudo = pseudo.trim();
        
        // Validation de longueur
        if (pseudo.length() > 20) {
            System.err.println("❌ Pseudo trop long: " + pseudo);
            response.sendRedirect("login.jsp?error=pseudo_too_long");
            return;
        }
        
        try {
            // Stocker en session
            HttpSession session = request.getSession();
            session.setAttribute("pseudo", pseudo);
            session.setAttribute("isLoggedIn", true);
            session.setAttribute("loginTime", new java.util.Date());
            
            System.out.println("✅ Connexion réussie: " + pseudo);
            
            // Rediriger vers le chat
            response.sendRedirect("chat.jsp");
            
        } catch (Exception e) {
            System.err.println("❌ Erreur lors de la connexion: " + e.getMessage());
            response.sendRedirect("login.jsp?error=server_error");
        }
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        // Rediriger vers la page de login pour les GET
        response.sendRedirect("login.jsp");
    }
}