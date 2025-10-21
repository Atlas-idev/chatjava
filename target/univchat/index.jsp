<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chat Université - Plateforme de Communication Étudiante Moderne</title>
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
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
        <div class="star"></div>
        <div class="star"></div>
    </div>

    <!-- Navigation -->
    <nav class="navbar">
        <div class="nav-container">
            <div class="nav-logo">
                <div class="logo-icon">
                    <i class="fas fa-comments"></i>
                </div>
                <span class="logo-text">UnivChat</span>
            </div>
            <div class="nav-links">
                <a href="#features" class="nav-link">Fonctionnalités</a>
                <a href="about.jsp" class="nav-link">À propos</a>
                <a href="community.jsp" class="nav-link">Communauté</a>
                <a href="login.jsp" class="nav-link secondary">Connexion</a>
                <a href="register.jsp" class="nav-link primary">S'inscrire</a>
            </div>
            <div class="nav-mobile-toggle">
                <i class="fas fa-bars"></i>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero-section">
        <div class="hero-background">
            <div class="hero-glow"></div>
        </div>
        <div class="container">
            <div class="hero-content">
                <div class="hero-badge">
                    <span>🚀 Plateforme Officielle</span>
                </div>
                <h1 class="hero-title">
                    <span class="gradient-text">Connectez-vous</span>
                    <br>à votre communauté universitaire
                </h1>
                <p class="hero-subtitle">
                    La plateforme de chat en temps réel qui révolutionne la communication étudiante. 
                    Échangez, collaborez et créez des liens dans un environnement moderne et sécurisé.
                </p>
                <div class="hero-stats">
                    <div class="stat">
                        <div class="stat-number" id="activeUsersCount">250+</div>
                        <div class="stat-label">Étudiants actifs</div>
                    </div>
                    <div class="stat">
                        <div class="stat-number" id="messagesCount">10K+</div>
                        <div class="stat-label">Messages échangés</div>
                    </div>
                    <div class="stat">
                        <div class="stat-number" id="onlineCount">50+</div>
                        <div class="stat-label">En ligne maintenant</div>
                    </div>
                </div>
                <div class="cta-buttons">
                    <a href="register.jsp" class="btn btn-primary btn-large">
                        <i class="fas fa-rocket"></i>
                        Commencer gratuitement
                    </a>
                    <a href="#features" class="btn btn-secondary btn-large">
                        <i class="fas fa-play-circle"></i>
                        Voir la démo(non sorry y a pas de démo faut que tu créer ton compte!!)
                    </a>
                </div>
                <div class="hero-trust">
                    <div class="trust-label">Recommandé par les étudiants de :</div>
                    <div class="trust-logos">
                        <div class="trust-logo">Université ESTI</div>
                        <div class="trust-logo">Université Esca</div>
                        <div class="trust-logo">Université Milay</div>
                    </div>
                </div>
            </div>
            <div class="hero-visual">
                <div class="chat-preview">
                    <div class="chat-header">
                        <div class="chat-avatar"></div>
                        <div class="chat-info">
                            <div class="chat-title">BOSS</div>
                            <div class="chat-status">plusieurs membres en ligne</div>
                        </div>
                    </div>
                    <div class="chat-messages">
                        <div class="message incoming">
                            <div class="message-avatar">J</div>
                            <div class="message-content">
                                <div class="message-sender">Juan</div>
                                <div class="message-text">Mba ampianaro Mathem please</div>
                            </div>
                        </div>
                        <div class="message outgoing">
                            <div class="message-content">
                                <div class="message-text">Mifona lesy fa za koa aza tsy mahay!</div>
                            </div>
                        </div>
                        <div class="message incoming">
                            <div class="message-avatar">N</div>
                            <div class="message-content">
                                <div class="message-sender">Naruto</div>
                                <div class="message-text">En tout cas, bon courage daholo</div>
                            </div>
                        </div>
                    </div>
                    <div class="chat-input">
                        <input type="text" placeholder="Tapez votre message...">
                        <button class="send-btn">
                            <i class="fas fa-paper-plane"></i>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Features Section -->
    <section id="features" class="features-section">
        <div class="container">
            <div class="section-header">
                <h2>Des fonctionnalités conçues pour les étudiants</h2>
                <p>Tout ce dont vous avez besoin pour une communication efficace</p>
            </div>
            <div class="features-grid">
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-bolt"></i>
                    </div>
                    <h3>Messages en temps réel</h3>
                    <p>Communication instantanée avec la technologie WebSocket pour des échanges fluides et sans délai</p>
                    <ul class="feature-list">
                        <li><i class="fas fa-check"></i> Diffusion immédiate</li>
                        <li><i class="fas fa-check"></i> Notifications en direct</li>
                        <li><i class="fas fa-check"></i> Historique conservé</li>
                    </ul>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-users"></i>
                    </div>
                    <h3>Communauté étudiante</h3>
                    <p>Rejoignez des milliers d'étudiants et élargissez votre réseau universitaire</p>
                    <ul class="feature-list">
                        <li><i class="fas fa-check"></i> Profils personnalisés</li>
                        <li><i class="fas fa-check"></i> Statuts en ligne/hors ligne</li>
                        <li><i class="fas fa-check"></i> Groupes par filière</li>
                    </ul>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-shield-alt"></i>
                    </div>
                    <h3>Environnement sécurisé</h3>
                    <p>Plateforme privée réservée aux étudiants avec modération et confidentialité</p>
                    <ul class="feature-list">
                        <li><i class="fas fa-check"></i> Données cryptées</li>
                        <li><i class="fas fa-check"></i> Authentification sécurisée (pas pour le moment)</li>
                        <li><i class="fas fa-check"></i> Modération active</li>
                    </ul>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-mobile-alt"></i>
                    </div>
                    <h3>Accessible partout</h3>
                    <p>Interface responsive optimisée pour tous vos appareils</p>
                    <ul class="feature-list">
                        <li><i class="fas fa-check"></i> Design responsive</li>
                        <li><i class="fas fa-check"></i> Performance optimale</li>
                        <li><i class="fas fa-check"></i> Navigation intuitive</li>
                    </ul>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-graduation-cap"></i>
                    </div>
                    <h3>Par filière</h3>
                    <p>Discutez avec des étudiants partageant les mêmes intérêts académiques</p>
                    <ul class="feature-list">
                        <li><i class="fas fa-check"></i> Salons spécialisés</li>
                        <li><i class="fas fa-check"></i> Entraide scolaire</li>
                        <li><i class="fas fa-check"></i> Partages de ressources</li>
                    </ul>
                </div>
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-rocket"></i>
                    </div>
                    <h3>Performance optimale</h3>
                    <p>Technologies modernes pour une expérience utilisateur exceptionnelle</p>
                    <ul class="feature-list">
                        <li><i class="fas fa-check"></i> Chargement rapide</li>
                        <li><i class="fas fa-check"></i> Interface moderne</li>
                        <li><i class="fas fa-check"></i> Mises à jour régulières</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <!-- Stats Section -->
    <section class="stats-section">
        <div class="container">
            <div class="stats-grid">
                <div class="stat-item">
                    <div class="stat-icon">
                        <i class="fas fa-user-graduate"></i>
                    </div>
                    <div class="stat-number" data-target="5000">0</div>
                    <div class="stat-label">Étudiants inscrits</div>
                </div>
                <div class="stat-item">
                    <div class="stat-icon">
                        <i class="fas fa-comment-dots"></i>
                    </div>
                    <div class="stat-number" data-target="150000">0</div>
                    <div class="stat-label">Messages envoyés</div>
                </div>
                <div class="stat-item">
                    <div class="stat-icon">
                        <i class="fas fa-university"></i>
                    </div>
                    <div class="stat-number" data-target="25">0</div>
                    <div class="stat-label">Universités partenaires</div>
                </div>
                <div class="stat-item">
                    <div class="stat-icon">
                        <i class="fas fa-clock"></i>
                    </div>
                    <div class="stat-number" data-target="99">0</div>
                    <div class="stat-label">% Uptime</div>
                </div>
            </div>
        </div>
    </section>

    <!-- CTA Section -->
    <section class="cta-section">
        <div class="container">
            <div class="cta-content">
                <h2>Prêt à rejoindre la communauté ?</h2>
                <p>Inscrivez-vous maintenant et commencez à échanger avec vos camarades en quelques secondes</p>
                <div class="cta-buttons">
                    <a href="register.jsp" class="btn btn-primary btn-large">
                        <i class="fas fa-user-plus"></i>
                        Créer mon compte
                    </a>
                    <a href="login.jsp" class="btn btn-secondary btn-large">
                        <i class="fas fa-sign-in-alt"></i>
                        Me connecter
                    </a>
                </div>
                <div class="cta-features">
                    <div class="feature">
                        <i class="fas fa-check"></i>
                        <span>Gratuit et toujours le sera</span>
                    </div>
                    <div class="feature">
                        <i class="fas fa-check"></i>
                        <span>Inscription en 30 secondes</span>
                    </div>
                    <div class="feature">
                        <i class="fas fa-check"></i>
                        <span>Aucune installation requise</span>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <div class="footer-content">
                <div class="footer-section">
                    <div class="footer-logo">
                        <i class="fas fa-comments"></i>
                        <span>UnivChat</span>
                    </div>
                    <p class="footer-description">
                        La plateforme de communication moderne pour la communauté universitaire.
                        Connectez-vous, échangez et collaborez en toute simplicité.
                    </p>
                    <div class="social-links">
                        <a href="#" class="social-link"><i class="fab fa-twitter"></i></a>
                        <a href="#" class="social-link"><i class="fab fa-linkedin"></i></a>
                        <a href="#" class="social-link"><i class="fab fa-github"></i></a>
                    </div>
                </div>
                <div class="footer-section">
                    <h4>Navigation</h4>
                    <ul class="footer-links">
                        <li><a href="index.jsp">Accueil</a></li>
                        <li><a href="login.jsp">Connexion</a></li>
                        <li><a href="register.jsp">Inscription</a></li>
                        <li><a href="#features">Fonctionnalités</a></li>
                    </ul>
                </div>
                <div class="footer-section">
                    <h4>Légal</h4>
                    <ul class="footer-links">
                        <li><a href="#">Conditions d'utilisation</a></li>
                        <li><a href="#">Politique de confidentialité</a></li>
                        <li><a href="#">Mentions légales</a></li>
                        <li><a href="#">Cookies</a></li>
                    </ul>
                </div>
                <div class="footer-section">
                    <h4>Support</h4>
                    <ul class="footer-links">
                        <li><a href="#">Centre d'aide</a></li>
                        <li><a href="#">Contact</a></li>
                        <li><a href="#">Status</a></li>
                        <li><a href="#">Signal un problème</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                <p>&copy; 2025 UnivChat. Tous droits réservés. Développé avec ❤️ pour la communauté étudiante.</p>
            </div>
        </div>
    </footer>

    <script>
        // Animation des statistiques
        function animateStats() {
            const statNumbers = document.querySelectorAll('.stat-number[data-target]');
            
            statNumbers.forEach(stat => {
                const target = parseInt(stat.getAttribute('data-target'));
                const duration = 2000;
                const step = target / (duration / 16);
                let current = 0;
                
                const timer = setInterval(() => {
                    current += step;
                    if (current >= target) {
                        current = target;
                        clearInterval(timer);
                    }
                    stat.textContent = current === target ? target.toLocaleString() + (stat.getAttribute('data-target') === '99' ? '%' : '+') : Math.floor(current).toLocaleString();
                }, 16);
            });
        }

        // Animation au scroll
        function initScrollAnimations() {
            const observer = new IntersectionObserver((entries) => {
                entries.forEach(entry => {
                    if (entry.isIntersecting) {
                        entry.target.classList.add('animate-in');
                        if (entry.target.classList.contains('stats-section')) {
                            animateStats();
                        }
                    }
                });
            }, { threshold: 0.1 });

            document.querySelectorAll('.feature-card, .stat-item, .cta-section').forEach(el => {
                observer.observe(el);
            });
        }

        // Navigation mobile
        function initMobileNav() {
            const toggle = document.querySelector('.nav-mobile-toggle');
            const navLinks = document.querySelector('.nav-links');
            
            toggle.addEventListener('click', () => {
                navLinks.classList.toggle('active');
                toggle.classList.toggle('active');
            });
        }

        // Animation d'entrée fluide
        document.addEventListener('DOMContentLoaded', function() {
            // Animation hero
            const heroElements = document.querySelectorAll('.hero-badge, .hero-title, .hero-subtitle, .hero-stats, .cta-buttons, .hero-trust, .chat-preview');
            heroElements.forEach((el, index) => {
                el.style.opacity = '0';
                el.style.transform = 'translateY(30px)';
                
                setTimeout(() => {
                    el.style.transition = 'all 0.8s cubic-bezier(0.4, 0, 0.2, 1)';
                    el.style.opacity = '1';
                    el.style.transform = 'translateY(0)';
                }, index * 200);
            });

            initScrollAnimations();
            initMobileNav();

            // Mise à jour des compteurs en temps réel (simulation)
            setInterval(() => {
                const onlineCount = document.getElementById('onlineCount');
                const activeUsers = document.getElementById('activeUsersCount');
                const messagesCount = document.getElementById('messagesCount');
                
                if (onlineCount) onlineCount.textContent = Math.floor(50 + Math.random() * 20) + '+';
                if (activeUsers) activeUsers.textContent = Math.floor(250 + Math.random() * 50) + '+';
                if (messagesCount) messagesCount.textContent = Math.floor(10000 + Math.random() * 1000) + '+';
            }, 5000);
        });

        // Smooth scroll pour les ancres
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                const target = document.querySelector(this.getAttribute('href'));
                if (target) {
                    target.scrollIntoView({
                        behavior: 'smooth',
                        block: 'start'
                    });
                }
            });
        });
    </script>

    <style>
        /* Styles supplémentaires pour la nouvelle mise en page */
        .navbar {
            position: fixed;
            top: 0;
            width: 100%;
            background: rgba(15, 23, 42, 0.95);
            backdrop-filter: blur(10px);
            z-index: 1000;
            border-bottom: 1px solid var(--border);
        }

        .nav-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 1rem 2rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .nav-logo {
            display: flex;
            align-items: center;
            gap: 0.75rem;
            font-weight: 700;
            font-size: 1.5rem;
        }

        .logo-icon {
            width: 40px;
            height: 40px;
            background: var(--gradient-primary);
            border-radius: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .nav-links {
            display: flex;
            gap: 2rem;
            align-items: center;
        }

        .nav-link {
            color: var(--text-primary);
            text-decoration: none;
            font-weight: 500;
            transition: color 0.3s ease;
        }

        .nav-link:hover {
            color: var(--primary-light);
        }

        .nav-link.primary {
            background: var(--gradient-primary);
            padding: 0.5rem 1.5rem;
            border-radius: 8px;
            color: white;
        }

        .nav-link.secondary {
            border: 1px solid var(--border);
            padding: 0.5rem 1.5rem;
            border-radius: 8px;
        }

        .nav-mobile-toggle {
            display: none;
            font-size: 1.5rem;
            cursor: pointer;
        }

        .hero-section {
            min-height: 100vh;
            display: flex;
            align-items: center;
            position: relative;
            padding-top: 80px;
        }

        .hero-background {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            overflow: hidden;
        }

        .hero-glow {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 600px;
            height: 600px;
            background: radial-gradient(circle, rgba(109, 93, 202, 0.1) 0%, rgba(109, 93, 202, 0) 70%);
            border-radius: 50%;
        }

        .hero-content {
            flex: 1;
            max-width: 600px;
        }

        .hero-visual {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .hero-badge {
            display: inline-block;
            background: rgba(109, 93, 202, 0.1);
            border: 1px solid rgba(109, 93, 202, 0.3);
            padding: 0.5rem 1rem;
            border-radius: 20px;
            margin-bottom: 2rem;
            font-size: 0.9rem;
        }

        .gradient-text {
            background: linear-gradient(135deg, #6D5DCA 0%, #4ECDC4 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .hero-title {
            font-size: 3.5rem;
            font-weight: 800;
            line-height: 1.1;
            margin-bottom: 1.5rem;
        }

        .hero-subtitle {
            font-size: 1.25rem;
            color: var(--text-secondary);
            margin-bottom: 2rem;
            line-height: 1.6;
        }

        .hero-stats {
            display: flex;
            gap: 2rem;
            margin-bottom: 2rem;
        }

        .stat {
            text-align: center;
        }

        .stat-number {
            font-size: 2rem;
            font-weight: 700;
            color: var(--primary-light);
        }

        .stat-label {
            font-size: 0.9rem;
            color: var(--text-secondary);
        }

        .btn-large {
            padding: 1rem 2rem;
            font-size: 1.1rem;
        }

        .hero-trust {
            margin-top: 2rem;
        }

        .trust-label {
            color: var(--text-secondary);
            margin-bottom: 1rem;
            font-size: 0.9rem;
        }

        .trust-logos {
            display: flex;
            gap: 1rem;
            flex-wrap: wrap;
        }

        .trust-logo {
            padding: 0.5rem 1rem;
            background: rgba(255, 255, 255, 0.05);
            border-radius: 8px;
            font-size: 0.9rem;
        }

        .chat-preview {
            background: var(--surface);
            border-radius: 20px;
            padding: 1.5rem;
            width: 400px;
            box-shadow: var(--shadow-lg);
            border: 1px solid var(--border);
        }

        .chat-header {
            display: flex;
            align-items: center;
            gap: 1rem;
            margin-bottom: 1.5rem;
            padding-bottom: 1rem;
            border-bottom: 1px solid var(--border);
        }

        .chat-avatar {
            width: 50px;
            height: 50px;
            background: var(--gradient-primary);
            border-radius: 50%;
        }

        .chat-title {
            font-weight: 600;
            font-size: 1.1rem;
        }

        .chat-status {
            color: var(--text-secondary);
            font-size: 0.9rem;
        }

        .chat-messages {
            margin-bottom: 1.5rem;
        }

        .message {
            display: flex;
            margin-bottom: 1rem;
            gap: 0.75rem;
        }

        .message.outgoing {
            justify-content: flex-end;
        }

        .message.outgoing .message-content {
            background: var(--gradient-primary);
            color: white;
        }

        .message-avatar {
            width: 35px;
            height: 35px;
            background: var(--secondary);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: 600;
            font-size: 0.8rem;
            flex-shrink: 0;
        }

        .message-content {
            background: var(--background);
            padding: 0.75rem 1rem;
            border-radius: 12px;
            max-width: 250px;
        }

        .message-sender {
            font-weight: 600;
            font-size: 0.8rem;
            margin-bottom: 0.25rem;
            color: var(--primary-light);
        }

        .message-text {
            font-size: 0.9rem;
        }

        .chat-input {
            display: flex;
            gap: 0.5rem;
        }

        .chat-input input {
            flex: 1;
            padding: 0.75rem 1rem;
            background: var(--background);
            border: 1px solid var(--border);
            border-radius: 12px;
            color: var(--text-primary);
        }

        .features-section {
            padding: 6rem 0;
        }

        .section-header {
            text-align: center;
            margin-bottom: 4rem;
        }

        .section-header h2 {
            font-size: 2.5rem;
            font-weight: 700;
            margin-bottom: 1rem;
        }

        .section-header p {
            font-size: 1.2rem;
            color: var(--text-secondary);
        }

        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 2rem;
        }

        .feature-card {
            background: var(--surface);
            padding: 2rem;
            border-radius: 20px;
            border: 1px solid var(--border);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .feature-card:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow-lg);
        }

        .feature-icon {
            width: 60px;
            height: 60px;
            background: var(--gradient-primary);
            border-radius: 15px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 1.5rem;
            font-size: 1.5rem;
        }

        .feature-card h3 {
            font-size: 1.5rem;
            font-weight: 600;
            margin-bottom: 1rem;
        }

        .feature-card p {
            color: var(--text-secondary);
            margin-bottom: 1.5rem;
            line-height: 1.6;
        }

        .feature-list {
            list-style: none;
        }

        .feature-list li {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            margin-bottom: 0.5rem;
            color: var(--text-secondary);
        }

        .feature-list i {
            color: var(--success);
        }

        .stats-section {
            padding: 4rem 0;
            background: var(--surface);
        }

        .stats-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 2rem;
            text-align: center;
        }

        .stat-item {
            padding: 2rem;
        }

        .stat-icon {
            width: 80px;
            height: 80px;
            background: var(--gradient-primary);
            border-radius: 20px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 1.5rem;
            font-size: 2rem;
        }

        .stat-item .stat-number {
            font-size: 3rem;
            font-weight: 800;
            margin-bottom: 0.5rem;
        }

        .stat-item .stat-label {
            font-size: 1.1rem;
            color: var(--text-secondary);
        }

        .cta-section {
            padding: 6rem 0;
            text-align: center;
        }

        .cta-content h2 {
            font-size: 2.5rem;
            font-weight: 700;
            margin-bottom: 1rem;
        }

        .cta-content p {
            font-size: 1.2rem;
            color: var(--text-secondary);
            margin-bottom: 2rem;
            max-width: 600px;
            margin-left: auto;
            margin-right: auto;
        }

        .cta-features {
            display: flex;
            justify-content: center;
            gap: 2rem;
            margin-top: 2rem;
            flex-wrap: wrap;
        }

        .feature {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            color: var(--text-secondary);
        }

        .footer {
            background: var(--surface-dark);
            padding: 4rem 0 2rem;
            border-top: 1px solid var(--border);
        }

        .footer-content {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 3rem;
            margin-bottom: 3rem;
        }

        .footer-logo {
            display: flex;
            align-items: center;
            gap: 0.75rem;
            font-weight: 700;
            font-size: 1.5rem;
            margin-bottom: 1rem;
        }

        .footer-description {
            color: var(--text-secondary);
            line-height: 1.6;
            margin-bottom: 1.5rem;
        }

        .social-links {
            display: flex;
            gap: 1rem;
        }

        .social-link {
            width: 40px;
            height: 40px;
            background: var(--surface);
            border-radius: 8px;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: all 0.3s ease;
        }

        .social-link:hover {
            background: var(--gradient-primary);
            transform: translateY(-2px);
        }

        .footer-section h4 {
            margin-bottom: 1.5rem;
            font-weight: 600;
        }

        .footer-links {
            list-style: none;
        }

        .footer-links li {
            margin-bottom: 0.75rem;
        }

        .footer-links a {
            color: var(--text-secondary);
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .footer-links a:hover {
            color: var(--primary-light);
        }

        .footer-bottom {
            text-align: center;
            padding-top: 2rem;
            border-top: 1px solid var(--border);
            color: var(--text-secondary);
        }

        /* Animations */
        .feature-card, .stat-item, .cta-section {
            opacity: 0;
            transform: translateY(30px);
            transition: all 0.6s ease;
        }

        .animate-in {
            opacity: 1;
            transform: translateY(0);
        }

        /* Responsive */
        @media (max-width: 768px) {
            .nav-links {
                display: none;
            }

            .nav-mobile-toggle {
                display: block;
            }

            .hero-section .container {
                flex-direction: column;
                text-align: center;
            }

            .hero-title {
                font-size: 2.5rem;
            }

            .hero-stats {
                justify-content: center;
            }

            .chat-preview {
                width: 100%;
                max-width: 400px;
                margin-top: 2rem;
            }

            .features-grid {
                grid-template-columns: 1fr;
            }

            .footer-content {
                grid-template-columns: 1fr;
                text-align: center;
            }

            .cta-features {
                flex-direction: column;
                gap: 1rem;
            }
        }
    </style>
</body>
</html>