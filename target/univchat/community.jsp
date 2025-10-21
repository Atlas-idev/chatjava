<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Communauté - Chat Université | Rejoignez la Communauté Étudiante</title>
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
                <a href="index.jsp" class="nav-link">Accueil</a>
                <a href="about.jsp" class="nav-link">À propos</a>
                <a href="community.jsp" class="nav-link active">Communauté</a>
                <a href="login.jsp" class="nav-link secondary">Connexion</a>
                <a href="register.jsp" class="nav-link primary">S'inscrire</a>
            </div>
            <div class="nav-mobile-toggle">
                <i class="fas fa-bars"></i>
            </div>
        </div>
    </nav>

    <!-- Hero Section Communauté -->
    <section class="community-hero-section">
        <div class="community-hero-background">
            <div class="community-hero-glow"></div>
        </div>
        <div class="container">
            <div class="community-hero-content">
                <div class="community-hero-badge">
                    <span>👥 Communauté Étudiante</span>
                </div>
                <h1 class="community-hero-title">
                    <span class="gradient-text">Rejoignez</span>
                    <br>la grande famille UnivChat
                </h1>
                <p class="community-hero-subtitle">
                    Découvrez une communauté dynamique d'étudiants passionnés, échangez avec vos pairs 
                    et construisez des relations qui iront bien au-delà de vos études.
                </p>
                <div class="community-hero-stats">
                    <div class="community-stat">
                        <div class="community-stat-number">5,000+</div>
                        <div class="community-stat-label">Étudiants inscrits</div>
                    </div>
                    <div class="community-stat">
                        <div class="community-stat-number">150+</div>
                        <div class="community-stat-label">Groupes actifs</div>
                    </div>
                    <div class="community-stat">
                        <div class="community-stat-number">25</div>
                        <div class="community-stat-label">Universités</div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Universités Partenaires Section -->
    <section class="universities-section">
        <div class="container">
            <div class="section-header">
                <h2>Universités Partenaires</h2>
                <p>Rejoignez des étudiants de ces établissements prestigieux</p>
            </div>
            <div class="universities-grid">
                <div class="university-card">
                    <div class="university-logo">
                        <i class="fas fa-graduation-cap"></i>
                    </div>
                    <h3>Université ESTI</h3>
                    <p class="university-stats">1,200+ étudiants</p>
                    <p class="university-description">
                        École Supérieure des Technologies de l'Information, leader dans la formation 
                        des ingénieurs en informatique à Madagascar.
                    </p>
                    <div class="university-tags">
                        <span class="tag">Informatique</span>
                        <span class="tag">Ingénierie</span>
                        <span class="tag">Technologie</span>
                    </div>
                </div>
                <div class="university-card">
                    <div class="university-logo">
                        <i class="fas fa-chart-line"></i>
                    </div>
                    <h3>Université Esca</h3>
                    <p class="university-stats">900+ étudiants</p>
                    <p class="university-description">
                        École de Commerce et de Management formant les futurs leaders 
                        du monde des affaires et de l'entrepreneuriat.
                    </p>
                    <div class="university-tags">
                        <span class="tag">Commerce</span>
                        <span class="tag">Management</span>
                        <span class="tag">Marketing</span>
                    </div>
                </div>
                <div class="university-card">
                    <div class="university-logo">
                        <i class="fas fa-flask"></i>
                    </div>
                    <h3>Université Milay</h3>
                    <p class="university-stats">800+ étudiants</p>
                    <p class="university-description">
                        Institution d'excellence dans les sciences fondamentales et appliquées, 
                        formant les scientifiques de demain.
                    </p>
                    <div class="university-tags">
                        <span class="tag">Sciences</span>
                        <span class="tag">Recherche</span>
                        <span class="tag">Innovation</span>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Groupes Section -->
    <section class="groups-section">
        <div class="container">
            <div class="section-header">
                <h2>Groupes Populaires</h2>
                <p>Rejoignez des communautés qui partagent vos centres d'intérêt</p>
            </div>
            <div class="groups-grid">
                <div class="group-card">
                    <div class="group-header">
                        <div class="group-icon">
                            <i class="fas fa-laptop-code"></i>
                        </div>
                        <div class="group-info">
                            <h3>Développement Web</h3>
                            <p class="group-members">450 membres</p>
                        </div>
                    </div>
                    <p class="group-description">
                        Échangez sur les technologies web modernes, partagez vos projets et 
                        obtenez de l'aide sur le développement frontend et backend.
                    </p>
                    <div class="group-activity">
                        <div class="activity-indicator active"></div>
                        <span>35 en ligne</span>
                    </div>
                    <button class="btn btn-primary btn-full">
                        <i class="fas fa-plus"></i>
                        Rejoindre le groupe
                    </button>
                </div>
                <div class="group-card">
                    <div class="group-header">
                        <div class="group-icon">
                            <i class="fas fa-calculator"></i>
                        </div>
                        <div class="group-info">
                            <h3>Mathématiques Avancées</h3>
                            <p class="group-members">320 membres</p>
                        </div>
                    </div>
                    <p class="group-description">
                        Groupe dédié à l'entraide en mathématiques, de l'algèbre à l'analyse 
                        complexe. Partagez vos exercices et solutions.
                    </p>
                    <div class="group-activity">
                        <div class="activity-indicator active"></div>
                        <span>28 en ligne</span>
                    </div>
                    <button class="btn btn-primary btn-full">
                        <i class="fas fa-plus"></i>
                        Rejoindre le groupe
                    </button>
                </div>
                <div class="group-card">
                    <div class="group-header">
                        <div class="group-icon">
                            <i class="fas fa-briefcase"></i>
                        </div>
                        <div class="group-info">
                            <h3>Entrepreneuriat</h3>
                            <p class="group-members">280 membres</p>
                        </div>
                    </div>
                    <p class="group-description">
                        Pour les futurs entrepreneurs et innovateurs. Partagez vos idées, 
                        trouvez des cofondateurs et discutez stratégie business.
                    </p>
                    <div class="group-activity">
                        <div class="activity-indicator active"></div>
                        <span>22 en ligne</span>
                    </div>
                    <button class="btn btn-primary btn-full">
                        <i class="fas fa-plus"></i>
                        Rejoindre le groupe
                    </button>
                </div>
                <div class="group-card">
                    <div class="group-header">
                        <div class="group-icon">
                            <i class="fas fa-language"></i>
                        </div>
                        <div class="group-info">
                            <h3>Échange Linguistique</h3>
                            <p class="group-members">510 membres</p>
                        </div>
                    </div>
                    <p class="group-description">
                        Améliorez vos compétences linguistiques en pratiquant avec des locuteurs natifs 
                        et participez à des sessions d'échange culturel.
                    </p>
                    <div class="group-activity">
                        <div class="activity-indicator active"></div>
                        <span>45 en ligne</span>
                    </div>
                    <button class="btn btn-primary btn-full">
                        <i class="fas fa-plus"></i>
                        Rejoindre le groupe
                    </button>
                </div>
                <div class="group-card">
                    <div class="group-header">
                        <div class="group-icon">
                            <i class="fas fa-music"></i>
                        </div>
                        <div class="group-info">
                            <h3>Musique & Arts</h3>
                            <p class="group-members">190 membres</p>
                        </div>
                    </div>
                    <p class="group-description">
                        Partagez votre passion pour la musique, les arts visuels et les performances. 
                        Organisez des collaborations et des événements culturels.
                    </p>
                    <div class="group-activity">
                        <div class="activity-indicator"></div>
                        <span>12 en ligne</span>
                    </div>
                    <button class="btn btn-primary btn-full">
                        <i class="fas fa-plus"></i>
                        Rejoindre le groupe
                    </button>
                </div>
                <div class="group-card">
                    <div class="group-header">
                        <div class="group-icon">
                            <i class="fas fa-dumbbell"></i>
                        </div>
                        <div class="group-info">
                            <h3>Sport & Bien-être</h3>
                            <p class="group-members">340 membres</p>
                        </div>
                    </div>
                    <p class="group-description">
                        Pour les passionnés de sport et de mode de vie sain. Organisez des sessions 
                        d'entraînement et partagez vos conseils bien-être.
                    </p>
                    <div class="group-activity">
                        <div class="activity-indicator active"></div>
                        <span>25 en ligne</span>
                    </div>
                    <button class="btn btn-primary btn-full">
                        <i class="fas fa-plus"></i>
                        Rejoindre le groupe
                    </button>
                </div>
            </div>
        </div>
    </section>

    <!-- Témoignages Section -->
    <section class="testimonials-section">
        <div class="container">
            <div class="section-header">
                <h2>Ce que disent nos étudiants</h2>
                <p>Découvrez les expériences de ceux qui ont rejoint notre communauté</p>
            </div>
            <div class="testimonials-grid">
                <div class="testimonial-card">
                    <div class="testimonial-content">
                        <i class="fas fa-quote-left"></i>
                        <p>
                            UnivChat m'a permis de trouver un groupe d'étude pour les mathématiques. 
                            Grâce à l'entraide, j'ai réussi mon examen alors que j'étais en difficulté !
                        </p>
                    </div>
                    <div class="testimonial-author">
                        <div class="author-avatar">
                            <i class="fas fa-user"></i>
                        </div>
                        <div class="author-info">
                            <h4>Sarah R.</h4>
                            <p>Étudiante en Informatique - ESTI</p>
                        </div>
                    </div>
                </div>
                <div class="testimonial-card">
                    <div class="testimonial-content">
                        <i class="fas fa-quote-left"></i>
                        <p>
                            J'ai rencontré mon partenaire de projet startup sur UnivChat ! 
                            La communauté entrepreneuriat est incroyablement motivante et supportive.
                        </p>
                    </div>
                    <div class="testimonial-author">
                        <div class="author-avatar">
                            <i class="fas fa-user"></i>
                        </div>
                        <div class="author-info">
                            <h4>Thomas L.</h4>
                            <p>Étudiant en Management - Esca</p>
                        </div>
                    </div>
                </div>
                <div class="testimonial-card">
                    <div class="testimonial-content">
                        <i class="fas fa-quote-left"></i>
                        <p>
                            En tant qu'étudiant international, UnivChat m'a aidé à m'intégrer 
                            rapidement. J'ai trouvé des amis et des groupes d'échange linguistique.
                        </p>
                    </div>
                    <div class="testimonial-author">
                        <div class="author-avatar">
                            <i class="fas fa-user"></i>
                        </div>
                        <div class="author-info">
                            <h4>Miguel A.</h4>
                            <p>Étudiant en Sciences - Milay</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Événements Section -->
    <section class="events-section">
        <div class="container">
            <div class="section-header">
                <h2>Événements à Venir</h2>
                <p>Participez aux événements organisés par notre communauté</p>
            </div>
            <div class="events-grid">
                <div class="event-card">
                    <div class="event-date">
                        <div class="event-day">15</div>
                        <div class="event-month">JUIN</div>
                    </div>
                    <div class="event-content">
                        <h3>Hackathon Innovation</h3>
                        <p class="event-time">
                            <i class="fas fa-clock"></i>
                            10:00 - 18:00
                        </p>
                        <p class="event-location">
                            <i class="fas fa-map-marker-alt"></i>
                            Campus ESTI
                        </p>
                        <p class="event-description">
                            ​​​​​​​24 heures de coding pour développer des solutions innovantes 
                            aux défis environnementaux. Nourriture et boissons fournies.
                        </p>
                        <div class="event-participants">
                            <div class="participants-avatars">
                                <div class="participant-avatar"></div>
                                <div class="participant-avatar"></div>
                                <div class="participant-avatar"></div>
                                <span>+42 participants</span>
                            </div>
                            <button class="btn btn-primary btn-small">
                                <i class="fas fa-calendar-plus"></i>
                                S'inscrire
                            </button>
                        </div>
                    </div>
                </div>
                <div class="event-card">
                    <div class="event-date">
                        <div class="event-day">22</div>
                        <div class="event-month">JUIN</div>
                    </div>
                    <div class="event-content">
                        <h3>Workshop Entrepreneuriat</h3>
                        <p class="event-time">
                            <i class="fas fa-clock"></i>
                            14:00 - 17:00
                        </p>
                        <p class="event-location">
                            <i class="fas fa-map-marker-alt"></i>
                            Amphi Esca
                        </p>
                        <p class="event-description">
                            Apprenez à pitcher votre startup comme un pro avec des entrepreneurs 
                            expérimentés. Session de networking incluse.
                        </p>
                        <div class="event-participants">
                            <div class="participants-avatars">
                                <div class="participant-avatar"></div>
                                <div class="participant-avatar"></div>
                                <div class="participant-avatar"></div>
                                <span>+28 participants</span>
                            </div>
                            <button class="btn btn-primary btn-small">
                                <i class="fas fa-calendar-plus"></i>
                                S'inscrire
                            </button>
                        </div>
                    </div>
                </div>
                <div class="event-card">
                    <div class="event-date">
                        <div class="event-day">30</div>
                        <div class="event-month">JUIN</div>
                    </div>
                    <div class="event-content">
                        <h3>Soirée Networking Inter-Universités</h3>
                        <p class="event-time">
                            <i class="fas fa-clock"></i>
                            18:30 - 21:00
                        </p>
                        <p class="event-location">
                            <i class="fas fa-map-marker-alt"></i>
                            Jardin Milay
                        </p>
                        <p class="event-description">
                            Rencontrez des étudiants de toutes les universités partenaires. 
                            Parfait pour élargir votre réseau professionnel et social.
                        </p>
                        <div class="event-participants">
                            <div class="participants-avatars">
                                <div class="participant-avatar"></div>
                                <div class="participant-avatar"></div>
                                <div class="participant-avatar"></div>
                                <span>+65 participants</span>
                            </div>
                            <button class="btn btn-primary btn-small">
                                <i class="fas fa-calendar-plus"></i>
                                S'inscrire
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- CTA Section -->
    <section class="cta-section">
        <div class="container">
            <div class="cta-content">
                <h2>Prêt à rejoindre notre communauté ?</h2>
                <p>Inscrivez-vous maintenant et connectez-vous avec des milliers d'étudiants passionnés</p>
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
                        <span>Rencontrez des étudiants partageant vos passions</span>
                    </div>
                    <div class="feature">
                        <i class="fas fa-check"></i>
                        <span>Participez à des événements exclusifs</span>
                    </div>
                    <div class="feature">
                        <i class="fas fa-check"></i>
                        <span>Bénéficiez d'entraide académique</span>
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
                        <li><a href="about.jsp">À propos</a></li>
                        <li><a href="community.jsp">Communauté</a></li>
                        <li><a href="login.jsp">Connexion</a></li>
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
                        <li><a href="#">Signaler un problème</a></li>
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
            const statNumbers = document.querySelectorAll('.community-stat-number');
            
            statNumbers.forEach(stat => {
                const currentText = stat.textContent;
                const target = parseInt(currentText.replace('+', ''));
                const duration = 2000;
                const step = target / (duration / 16);
                let current = 0;
                
                const timer = setInterval(() => {
                    current += step;
                    if (current >= target) {
                        current = target;
                        clearInterval(timer);
                    }
                    stat.textContent = Math.floor(current) + (currentText.includes('+') ? '+' : '');
                }, 16);
            });
        }

        // Animation au scroll
        function initScrollAnimations() {
            const observer = new IntersectionObserver((entries) => {
                entries.forEach(entry => {
                    if (entry.isIntersecting) {
                        entry.target.classList.add('animate-in');
                        if (entry.target.classList.contains('community-hero-section')) {
                            animateStats();
                        }
                    }
                });
            }, { threshold: 0.1 });

            document.querySelectorAll('.universities-section, .groups-section, .testimonials-section, .events-section, .cta-section').forEach(el => {
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
            const heroElements = document.querySelectorAll('.community-hero-badge, .community-hero-title, .community-hero-subtitle, .community-hero-stats');
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

            // Animation des cartes de groupe au survol
            const groupCards = document.querySelectorAll('.group-card');
            groupCards.forEach(card => {
                card.addEventListener('mouseenter', () => {
                    card.style.transform = 'translateY(-10px)';
                });
                card.addEventListener('mouseleave', () => {
                    card.style.transform = 'translateY(0)';
                });
            });
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
        /* Variables CSS cohérentes avec l'accueil */
        :root {
            --primary: #6D5DCA;
            --primary-light: #8B7BD9;
            --secondary: #4ECDC4;
            --background: #0F172A;
            --surface: #1E293B;
            --surface-dark: #0F172A;
            --text-primary: #F8FAFC;
            --text-secondary: #94A3B8;
            --border: #334155;
            --success: #10B981;
            --gradient-primary: linear-gradient(135deg, #6D5DCA 0%, #4ECDC4 100%);
            --shadow-lg: 0 25px 50px -12px rgba(0, 0, 0, 0.5);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', sans-serif;
            background: var(--background);
            color: var(--text-primary);
            line-height: 1.6;
            overflow-x: hidden;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 2rem;
        }

        /* Étoiles animées */
        .stars-container {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            pointer-events: none;
            z-index: -1;
        }

        .star {
            position: absolute;
            background: white;
            border-radius: 50%;
            animation: twinkle 5s infinite;
        }

        .star:nth-child(1) { top: 10%; left: 20%; width: 2px; height: 2px; animation-delay: 0s; }
        .star:nth-child(2) { top: 25%; left: 80%; width: 3px; height: 3px; animation-delay: 1s; }
        .star:nth-child(3) { top: 50%; left: 40%; width: 2px; height: 2px; animation-delay: 2s; }
        .star:nth-child(4) { top: 75%; left: 60%; width: 3px; height: 3px; animation-delay: 3s; }
        .star:nth-child(5) { top: 30%; left: 10%; width: 2px; height: 2px; animation-delay: 4s; }
        .star:nth-child(6) { top: 60%; left: 90%; width: 3px; height: 3px; animation-delay: 0.5s; }
        .star:nth-child(7) { top: 85%; left: 30%; width: 2px; height: 2px; animation-delay: 1.5s; }
        .star:nth-child(8) { top: 15%; left: 70%; width: 3px; height: 3px; animation-delay: 2.5s; }

        @keyframes twinkle {
            0%, 100% { opacity: 0.2; }
            50% { opacity: 1; }
        }

        /* Navigation */
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

        .nav-link.active {
            color: var(--primary-light);
            font-weight: 600;
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

        /* Hero Section Communauté */
        .community-hero-section {
            min-height: 80vh;
            display: flex;
            align-items: center;
            position: relative;
            padding-top: 100px;
        }

        .community-hero-background {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            overflow: hidden;
        }

        .community-hero-glow {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 600px;
            height: 600px;
            background: radial-gradient(circle, rgba(109, 93, 202, 0.1) 0%, rgba(109, 93, 202, 0) 70%);
            border-radius: 50%;
        }

        .community-hero-content {
            text-align: center;
            max-width: 800px;
            margin: 0 auto;
        }

        .community-hero-badge {
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

        .community-hero-title {
            font-size: 3.5rem;
            font-weight: 800;
            line-height: 1.1;
            margin-bottom: 1.5rem;
        }

        .community-hero-subtitle {
            font-size: 1.25rem;
            color: var(--text-secondary);
            margin-bottom: 3rem;
            line-height: 1.6;
        }

        .community-hero-stats {
            display: flex;
            justify-content: center;
            gap: 3rem;
            margin-bottom: 2rem;
        }

        .community-stat {
            text-align: center;
        }

        .community-stat-number {
            font-size: 2.5rem;
            font-weight: 700;
            color: var(--primary-light);
            margin-bottom: 0.5rem;
        }

        .community-stat-label {
            font-size: 1rem;
            color: var(--text-secondary);
        }

        /* Section Header */
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

        /* Universités Section */
        .universities-section {
            padding: 6rem 0;
            background: var(--surface);
        }

        .universities-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 2rem;
        }

        .university-card {
            background: var(--background);
            padding: 2rem;
            border-radius: 20px;
            border: 1px solid var(--border);
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .university-card:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow-lg);
        }

        .university-logo {
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

        .university-card h3 {
            font-size: 1.5rem;
            font-weight: 600;
            margin-bottom: 0.5rem;
        }

        .university-stats {
            color: var(--primary-light);
            font-weight: 600;
            margin-bottom: 1rem;
        }

        .university-description {
            color: var(--text-secondary);
            margin-bottom: 1.5rem;
            line-height: 1.6;
        }

        .university-tags {
            display: flex;
            justify-content: center;
            gap: 0.5rem;
            flex-wrap: wrap;
        }

        .tag {
            background: rgba(109, 93, 202, 0.1);
            color: var(--primary-light);
            padding: 0.25rem 0.75rem;
            border-radius: 15px;
            font-size: 0.8rem;
            border: 1px solid rgba(109, 93, 202, 0.3);
        }

        /* Groupes Section */
        .groups-section {
            padding: 6rem 0;
        }

        .groups-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 2rem;
        }

        .group-card {
            background: var(--surface);
            padding: 2rem;
            border-radius: 20px;
            border: 1px solid var(--border);
            transition: all 0.3s ease;
        }

        .group-card:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow-lg);
        }

        .group-header {
            display: flex;
            align-items: center;
            gap: 1rem;
            margin-bottom: 1.5rem;
        }

        .group-icon {
            width: 60px;
            height: 60px;
            background: var(--gradient-primary);
            border-radius: 15px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.5rem;
        }

        .group-info h3 {
            font-size: 1.3rem;
            font-weight: 600;
            margin-bottom: 0.25rem;
        }

        .group-members {
            color: var(--text-secondary);
            font-size: 0.9rem;
        }

        .group-description {
            color: var(--text-secondary);
            margin-bottom: 1.5rem;
            line-height: 1.6;
        }

        .group-activity {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            margin-bottom: 1.5rem;
            font-size: 0.9rem;
            color: var(--text-secondary);
        }

        .activity-indicator {
            width: 8px;
            height: 8px;
            border-radius: 50%;
            background: var(--success);
        }

        .activity-indicator.active {
            background: var(--success);
        }

        .activity-indicator:not(.active) {
            background: var(--text-secondary);
        }

        .btn-full {
            width: 100%;
            justify-content: center;
        }

        /* Témoignages Section */
        .testimonials-section {
            padding: 6rem 0;
            background: var(--surface);
        }

        .testimonials-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 2rem;
        }

        .testimonial-card {
            background: var(--background);
            padding: 2rem;
            border-radius: 20px;
            border: 1px solid var(--border);
        }

        .testimonial-content {
            position: relative;
            margin-bottom: 2rem;
        }

        .testimonial-content i {
            font-size: 1.5rem;
            color: var(--primary-light);
            margin-bottom: 1rem;
            display: block;
        }

        .testimonial-content p {
            color: var(--text-primary);
            line-height: 1.7;
            font-style: italic;
        }

        .testimonial-author {
            display: flex;
            align-items: center;
            gap: 1rem;
        }

        .author-avatar {
            width: 50px;
            height: 50px;
            background: var(--gradient-primary);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .author-info h4 {
            font-weight: 600;
            margin-bottom: 0.25rem;
        }

        .author-info p {
            color: var(--text-secondary);
            font-size: 0.9rem;
        }

        /* Événements Section */
        .events-section {
            padding: 6rem 0;
        }

        .events-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(400px, 1fr));
            gap: 2rem;
        }

        .event-card {
            background: var(--surface);
            padding: 2rem;
            border-radius: 20px;
            border: 1px solid var(--border);
            display: flex;
            gap: 1.5rem;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .event-card:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow-lg);
        }

        .event-date {
            flex: 0 0 80px;
            text-align: center;
            background: var(--gradient-primary);
            border-radius: 12px;
            padding: 1rem 0.5rem;
        }

        .event-day {
            font-size: 2rem;
            font-weight: 700;
            line-height: 1;
        }

        .event-month {
            font-size: 0.9rem;
            font-weight: 600;
            opacity: 0.9;
        }

        .event-content {
            flex: 1;
        }

        .event-content h3 {
            font-size: 1.3rem;
            font-weight: 600;
            margin-bottom: 1rem;
        }

        .event-time, .event-location {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            color: var(--text-secondary);
            margin-bottom: 0.5rem;
            font-size: 0.9rem;
        }

        .event-description {
            color: var(--text-secondary);
            margin: 1rem 0;
            line-height: 1.6;
        }

        .event-participants {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 1.5rem;
        }

        .participants-avatars {
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .participant-avatar {
            width: 30px;
            height: 30px;
            background: var(--primary-light);
            border-radius: 50%;
        }

        .participants-avatars span {
            color: var(--text-secondary);
            font-size: 0.9rem;
        }

        .btn-small {
            padding: 0.5rem 1rem;
            font-size: 0.9rem;
        }

        /* CTA Section */
        .cta-section {
            padding: 6rem 0;
            text-align: center;
            background: var(--surface);
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

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 0.5rem;
            padding: 1rem 2rem;
            border-radius: 12px;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s ease;
            border: none;
            cursor: pointer;
            font-size: 1rem;
        }

        .btn-large {
            padding: 1.25rem 2.5rem;
            font-size: 1.1rem;
        }

        .btn-primary {
            background: var(--gradient-primary);
            color: white;
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 10px 25px rgba(109, 93, 202, 0.3);
        }

        .btn-secondary {
            background: transparent;
            color: var(--text-primary);
            border: 1px solid var(--border);
        }

        .btn-secondary:hover {
            background: rgba(255, 255, 255, 0.05);
            transform: translateY(-2px);
        }

        .cta-buttons {
            display: flex;
            gap: 1rem;
            justify-content: center;
            flex-wrap: wrap;
            margin-bottom: 2rem;
        }

        .cta-features {
            display: flex;
            justify-content: center;
            gap: 2rem;
            flex-wrap: wrap;
        }

        .feature {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            color: var(--text-secondary);
        }

        .feature i {
            color: var(--success);
        }

        /* Footer */
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
        .universities-section, .groups-section, .testimonials-section, .events-section, .cta-section {
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

            .community-hero-title {
                font-size: 2.5rem;
            }

            .community-hero-stats {
                flex-direction: column;
                gap: 2rem;
            }

            .universities-grid,
            .groups-grid,
            .testimonials-grid,
            .events-grid {
                grid-template-columns: 1fr;
            }

            .event-card {
                flex-direction: column;
                text-align: center;
            }

            .event-date {
                align-self: center;
            }

            .event-participants {
                flex-direction: column;
                gap: 1rem;
            }

            .footer-content {
                grid-template-columns: 1fr;
                text-align: center;
            }

            .cta-buttons {
                flex-direction: column;
                align-items: center;
            }

            .cta-features {
                flex-direction: column;
                gap: 1rem;
            }

            .btn-large {
                width: 100%;
                max-width: 300px;
                justify-content: center;
            }
        }
    </style>
</body>
</html>