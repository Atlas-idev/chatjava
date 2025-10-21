<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>À Propos - Chat Université | Plateforme de Communication Étudiante Moderne</title>
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
                <a href="about.jsp" class="nav-link active">À propos</a>
                <a href="#founder" class="nav-link">Fondateur</a>
                <a href="login.jsp" class="nav-link secondary">Connexion</a>
                <a href="register.jsp" class="nav-link primary">S'inscrire</a>
            </div>
            <div class="nav-mobile-toggle">
                <i class="fas fa-bars"></i>
            </div>
        </div>
    </nav>

    <!-- Hero Section À Propos -->
    <section class="about-hero-section">
        <div class="about-hero-background">
            <div class="about-hero-glow"></div>
        </div>
        <div class="container">
            <div class="about-hero-content">
                <div class="about-hero-badge">
                    <span>🌟 Notre Histoire</span>
                </div>
                <h1 class="about-hero-title">
                    <span class="gradient-text">L'Histoire</span>
                    <br>Derrière UnivChat
                </h1>
                <p class="about-hero-subtitle">
                    Découvrez comment une vision personnelle est devenue la plateforme de communication 
                    qui connecte aujourd'hui toute la communauté universitaire.
                </p>
                <div class="about-hero-stats">
                    <div class="about-stat">
                        <div class="about-stat-number">2025</div>
                        <div class="about-stat-label">Année de création</div>
                    </div>
                    <div class="about-stat">
                        <div class="about-stat-number">3</div>
                        <div class="about-stat-label">Universités partenaires</div>
                    </div>
                    <div class="about-stat">
                        <div class="about-stat-number">100%</div>
                        <div class="about-stat-label">Gratuit pour les étudiants</div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Notre Mission Section -->
    <section class="mission-section">
        <div class="container">
            <div class="mission-content">
                <div class="mission-text">
                    <h2>Notre Mission</h2>
                    <p>
                        UnivChat est né d'un constat simple : les étudiants méritent mieux que les plateformes 
                        de communication génériques. Nous avons créé un espace dédié spécialement à la 
                        communauté universitaire, où l'échange, l'entraide et la collaboration sont au cœur 
                        de l'expérience.
                    </p>
                    <p>
                        Notre objectif est de briser les barrières entre les filières et les universités, 
                        en créant un écosystème où chaque étudiant peut trouver sa place, partager ses 
                        connaissances et construire des relations durables.
                    </p>
                    <div class="mission-values">
                        <div class="value-item">
                            <div class="value-icon">
                                <i class="fas fa-comments"></i>
                            </div>
                            <h4>Communication</h4>
                            <p>Faciliter les échanges entre étudiants</p>
                        </div>
                        <div class="value-item">
                            <div class="value-icon">
                                <i class="fas fa-graduation-cap"></i>
                            </div>
                            <h4>Éducation</h4>
                            <p>Favoriser le partage des connaissances</p>
                        </div>
                        <div class="value-item">
                            <div class="value-icon">
                                <i class="fas fa-users"></i>
                            </div>
                            <h4>Communauté</h4>
                            <p>Créer des liens durables entre étudiants</p>
                        </div>
                    </div>
                </div>
                <div class="mission-visual">
                    <div class="mission-card">
                        <div class="card-header">
                            <h3>Notre Vision</h3>
                            <i class="fas fa-eye"></i>
                        </div>
                        <p>
                            Nous aspirons à devenir la plateforme de référence pour la communication universitaire, 
                            en connectant les étudiants de toutes les filières et en favorisant l'émergence d'une 
                            communauté étudiante soudée, collaborative et tournée vers l'avenir.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Fondateur Section -->
    <section id="founder" class="founder-section">
        <div class="container">
            <div class="section-header">
                <h2>Le Fondateur</h2>
                <p>Découvrez la personne derrière UnivChat</p>
            </div>
            <div class="founder-content">
                <div class="founder-photo">
                    <div class="photo-container">
                        <div class="photo-placeholder">
                            <i class="fas fa-user-graduate"></i>
                        </div>
                        <div class="photo-glow"></div>
                    </div>
                </div>
                <div class="founder-info">
                    <h3>Haminarivo Ny Mandresy Juan Davids</h3>
                    <p class="founder-title">Fondateur & Développeur Principal</p>
                    <p class="founder-bio">
                        Passionné par la technologie et l'innovation, Juan a créé UnivChat durant ses études 
                        universitaires. Constatant les difficultés de communication entre étudiants de différentes 
                        filières, il a décidé de développer une solution qui rassemble toute la communauté 
                        universitaire dans un espace unique et moderne.
                    </p>
                    <p class="founder-bio">
                        Son expérience personnelle en tant qu'étudiant lui a permis de comprendre les besoins 
                        spécifiques de la communauté universitaire et de créer une plateforme qui répond 
                        parfaitement à ces attentes.
                    </p>
                    <div class="founder-quote">
                        <i class="fas fa-quote-left"></i>
                        <p>
                            "Je crois fermement que la communication est la clé de la réussite universitaire. 
                            UnivChat est ma contribution pour aider les étudiants à mieux échanger, collaborer 
                            et réussir ensemble."
                        </p>
                    </div>
                    <div class="founder-social">
                        <a href="#" class="social-link">
                            <i class="fab fa-linkedin"></i>
                            <span>LinkedIn</span>
                        </a>
                        <a href="#" class="social-link">
                            <i class="fab fa-github"></i>
                            <span>GitHub</span>
                        </a>
                        <a href="#" class="social-link">
                            <i class="fab fa-twitter"></i>
                            <span>Twitter</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Timeline Section -->
    <section class="timeline-section">
        <div class="container">
            <div class="section-header">
                <h2>Notre Parcours</h2>
                <p>Les étapes clés du développement d'UnivChat</p>
            </div>
            <div class="timeline">
                <div class="timeline-item">
                    <div class="timeline-date">Janvier 2025</div>
                    <div class="timeline-content">
                        <h4>L'Idée</h4>
                        <p>Naissance du concept UnivChat suite aux observations des difficultés de communication entre étudiants</p>
                    </div>
                </div>
                <div class="timeline-item">
                    <div class="timeline-date">Mars 2025</div>
                    <div class="timeline-content">
                        <h4>Développement</h4>
                        <p>Début du développement de la plateforme avec les technologies modernes</p>
                    </div>
                </div>
                <div class="timeline-item">
                    <div class="timeline-date">Mai 2025</div>
                    <div class="timeline-content">
                        <h4>Premiers Tests</h4>
                        <p>Lancement de la version bêta avec les premiers étudiants testeurs</p>
                    </div>
                </div>
                <div class="timeline-item">
                    <div class="timeline-date">Juin 2025</div>
                    <div class="timeline-content">
                        <h4>Lancement Officiel</h4>
                        <p>Ouverture d'UnivChat à toute la communauté universitaire</p>
                    </div>
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
                        <li><a href="login.jsp">Connexion</a></li>
                        <li><a href="register.jsp">Inscription</a></li>
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
                <p>&copy; 2024 UnivChat. Tous droits réservés. Développé avec ❤️ pour la communauté étudiante.</p>
            </div>
        </div>
    </footer>

    <script>
        // Animation des statistiques
        function animateStats() {
            const statNumbers = document.querySelectorAll('.about-stat-number');
            
            statNumbers.forEach(stat => {
                const target = parseInt(stat.textContent);
                const duration = 2000;
                const step = target / (duration / 16);
                let current = 0;
                
                const timer = setInterval(() => {
                    current += step;
                    if (current >= target) {
                        current = target;
                        clearInterval(timer);
                    }
                    stat.textContent = Math.floor(current);
                }, 16);
            });
        }

        // Animation au scroll
        function initScrollAnimations() {
            const observer = new IntersectionObserver((entries) => {
                entries.forEach(entry => {
                    if (entry.isIntersecting) {
                        entry.target.classList.add('animate-in');
                        if (entry.target.classList.contains('about-hero-section')) {
                            animateStats();
                        }
                    }
                });
            }, { threshold: 0.1 });

            document.querySelectorAll('.mission-section, .founder-section, .timeline-section, .cta-section').forEach(el => {
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
            const heroElements = document.querySelectorAll('.about-hero-badge, .about-hero-title, .about-hero-subtitle, .about-hero-stats');
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

        /* Hero Section À Propos */
        .about-hero-section {
            min-height: 80vh;
            display: flex;
            align-items: center;
            position: relative;
            padding-top: 100px;
        }

        .about-hero-background {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            overflow: hidden;
        }

        .about-hero-glow {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 600px;
            height: 600px;
            background: radial-gradient(circle, rgba(109, 93, 202, 0.1) 0%, rgba(109, 93, 202, 0) 70%);
            border-radius: 50%;
        }

        .about-hero-content {
            text-align: center;
            max-width: 800px;
            margin: 0 auto;
        }

        .about-hero-badge {
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

        .about-hero-title {
            font-size: 3.5rem;
            font-weight: 800;
            line-height: 1.1;
            margin-bottom: 1.5rem;
        }

        .about-hero-subtitle {
            font-size: 1.25rem;
            color: var(--text-secondary);
            margin-bottom: 3rem;
            line-height: 1.6;
        }

        .about-hero-stats {
            display: flex;
            justify-content: center;
            gap: 3rem;
            margin-bottom: 2rem;
        }

        .about-stat {
            text-align: center;
        }

        .about-stat-number {
            font-size: 2.5rem;
            font-weight: 700;
            color: var(--primary-light);
            margin-bottom: 0.5rem;
        }

        .about-stat-label {
            font-size: 1rem;
            color: var(--text-secondary);
        }

        /* Mission Section */
        .mission-section {
            padding: 6rem 0;
            background: var(--surface);
        }

        .mission-content {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 4rem;
            align-items: center;
        }

        .mission-text h2 {
            font-size: 2.5rem;
            font-weight: 700;
            margin-bottom: 2rem;
        }

        .mission-text p {
            font-size: 1.1rem;
            color: var(--text-secondary);
            margin-bottom: 1.5rem;
            line-height: 1.7;
        }

        .mission-values {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 1.5rem;
            margin-top: 2rem;
        }

        .value-item {
            text-align: center;
            padding: 1.5rem;
            background: rgba(255, 255, 255, 0.05);
            border-radius: 12px;
        }

        .value-icon {
            width: 60px;
            height: 60px;
            background: var(--gradient-primary);
            border-radius: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 1rem;
            font-size: 1.5rem;
        }

        .value-item h4 {
            font-size: 1.2rem;
            font-weight: 600;
            margin-bottom: 0.5rem;
        }

        .value-item p {
            font-size: 0.9rem;
            color: var(--text-secondary);
            margin: 0;
        }

        .mission-card {
            background: var(--background);
            padding: 2rem;
            border-radius: 20px;
            border: 1px solid var(--border);
            box-shadow: var(--shadow-lg);
        }

        .card-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 1.5rem;
        }

        .card-header h3 {
            font-size: 1.5rem;
            font-weight: 600;
        }

        .card-header i {
            font-size: 2rem;
            color: var(--primary-light);
        }

        .mission-card p {
            color: var(--text-secondary);
            line-height: 1.7;
        }

        /* Founder Section */
        .founder-section {
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

        .founder-content {
            display: grid;
            grid-template-columns: 1fr 2fr;
            gap: 4rem;
            align-items: center;
        }

        .founder-photo {
            display: flex;
            justify-content: center;
        }

        .photo-container {
            position: relative;
        }

        .photo-placeholder {
            width: 300px;
            height: 300px;
            background: var(--gradient-primary);
            border-radius: 20px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 5rem;
            color: white;
        }

        .photo-glow {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 320px;
            height: 320px;
            background: radial-gradient(circle, rgba(109, 93, 202, 0.3) 0%, rgba(109, 93, 202, 0) 70%);
            border-radius: 25px;
            z-index: -1;
        }

        .founder-info h3 {
            font-size: 2.2rem;
            font-weight: 700;
            margin-bottom: 0.5rem;
        }

        .founder-title {
            font-size: 1.2rem;
            color: var(--primary-light);
            margin-bottom: 2rem;
            font-weight: 500;
        }

        .founder-bio {
            font-size: 1.1rem;
            color: var(--text-secondary);
            margin-bottom: 1.5rem;
            line-height: 1.7;
        }

        .founder-quote {
            background: rgba(109, 93, 202, 0.1);
            border-left: 4px solid var(--primary-light);
            padding: 1.5rem;
            margin: 2rem 0;
            border-radius: 0 12px 12px 0;
        }

        .founder-quote i {
            font-size: 1.5rem;
            color: var(--primary-light);
            margin-bottom: 1rem;
            display: block;
        }

        .founder-quote p {
            font-style: italic;
            color: var(--text-primary);
            line-height: 1.7;
        }

        .founder-social {
            display: flex;
            gap: 1rem;
            margin-top: 2rem;
        }

        .founder-social .social-link {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            padding: 0.75rem 1.5rem;
            background: var(--surface);
            border-radius: 8px;
            text-decoration: none;
            color: var(--text-primary);
            transition: all 0.3s ease;
        }

        .founder-social .social-link:hover {
            background: var(--gradient-primary);
            transform: translateY(-2px);
        }

        /* Timeline Section */
        .timeline-section {
            padding: 6rem 0;
            background: var(--surface);
        }

        .timeline {
            position: relative;
            max-width: 800px;
            margin: 0 auto;
        }

        .timeline::before {
            content: '';
            position: absolute;
            left: 50%;
            top: 0;
            bottom: 0;
            width: 2px;
            background: var(--gradient-primary);
            transform: translateX(-50%);
        }

        .timeline-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 4rem;
            position: relative;
        }

        .timeline-item:nth-child(odd) {
            flex-direction: row-reverse;
        }

        .timeline-item:nth-child(odd) .timeline-content {
            text-align: right;
        }

        .timeline-date {
            flex: 0 0 150px;
            text-align: center;
            background: var(--gradient-primary);
            padding: 0.75rem 1rem;
            border-radius: 20px;
            font-weight: 600;
            position: relative;
            z-index: 2;
        }

        .timeline-content {
            flex: 1;
            padding: 2rem;
            background: var(--background);
            border-radius: 12px;
            border: 1px solid var(--border);
            margin: 0 2rem;
            position: relative;
        }

        .timeline-content::before {
            content: '';
            position: absolute;
            top: 50%;
            width: 20px;
            height: 20px;
            background: var(--gradient-primary);
            border-radius: 50%;
            transform: translateY(-50%);
        }

        .timeline-item:nth-child(even) .timeline-content::before {
            left: -30px;
        }

        .timeline-item:nth-child(odd) .timeline-content::before {
            right: -30px;
        }

        .timeline-content h4 {
            font-size: 1.3rem;
            font-weight: 600;
            margin-bottom: 0.5rem;
        }

        .timeline-content p {
            color: var(--text-secondary);
            line-height: 1.6;
        }

        /* CTA Section */
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
        .mission-section, .founder-section, .timeline-section, .cta-section {
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

            .about-hero-title {
                font-size: 2.5rem;
            }

            .about-hero-stats {
                flex-direction: column;
                gap: 2rem;
            }

            .mission-content {
                grid-template-columns: 1fr;
                gap: 2rem;
            }

            .mission-values {
                grid-template-columns: 1fr;
            }

            .founder-content {
                grid-template-columns: 1fr;
                gap: 2rem;
                text-align: center;
            }

            .photo-placeholder {
                width: 200px;
                height: 200px;
                font-size: 3rem;
            }

            .photo-glow {
                width: 220px;
                height: 220px;
            }

            .timeline::before {
                left: 30px;
            }

            .timeline-item {
                flex-direction: row !important;
                align-items: flex-start;
            }

            .timeline-item:nth-child(odd) .timeline-content {
                text-align: left;
            }

            .timeline-date {
                flex: 0 0 100px;
                margin-right: 1rem;
            }

            .timeline-content {
                margin: 0;
                margin-left: 1rem;
            }

            .timeline-content::before {
                left: -25px !important;
                right: auto !important;
            }

            .footer-content {
                grid-template-columns: 1fr;
                text-align: center;
            }

            .cta-buttons {
                flex-direction: column;
                align-items: center;
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