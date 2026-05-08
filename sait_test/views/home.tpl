% rebase('layout.tpl', title='Главная')
<link rel="stylesheet" type="text/css" href="/static/content/style_home-page.css"/>
<div class="home-page">
    
    <!-- Герой-секция с анимацией появления -->
    <section class="hero">
        <div class="hero-content animate-slide-in">
            <h1>Пушистый уголок</h1>
            <p class="hero-subtitle">Каждое животное заслуживает дом и любящую семью</p>
            <div class="hero-buttons">
                <a href="/pets" class="button-primary pulse">Хочу найти друга</a>
                <a href="/needs" class="button-secondary">Хочу помочь</a>
            </div>
        </div>
        <div class="hero-image animate-slide-in-right">
            <div class="hero-photo-placeholder float-animation">
                <img src="/static/images/home/happydog.jpg" alt="Счастливая собака" onerror="this.style.display='none'; this.nextElementSibling.style.display='flex';">
                <div class="placeholder-image" style="display: none;">🐕 Счастливая собака</div>
            </div>
        </div>
    </section>
    
    <!-- Факты о приюте с анимацией карточек -->
    <section class="facts">
        <h2 class="animate-title">Почему нам можно доверять</h2>
        <div class="facts-grid">
            <div class="fact-item animate-card" style="animation-delay: 0.1s;">
                <div class="fact-icon bounce">🏠</div>
                <h3>Свой приют</h3>
                <p>Территория 50 соток с вольерами и теплыми комнатами</p>
            </div>
            <div class="fact-item animate-card" style="animation-delay: 0.2s;">
                <div class="fact-icon bounce">❤️</div>
                <h3>Забота о каждом</h3>
                <p>Ветеринарный контроль и индивидуальный подход</p>
            </div>
            <div class="fact-item animate-card" style="animation-delay: 0.3s;">
                <div class="fact-icon bounce">🤝</div>
                <h3>Помощь после</h3>
                <p>Мы на связи даже после того, как питомец нашел дом</p>
            </div>
            <div class="fact-item animate-card" style="animation-delay: 0.4s;">
                <div class="fact-icon bounce">📞</div>
                <h3>Всегда на связи</h3>
                <p>Горячая линия и поддержка 24/7</p>
            </div>
        </div>
    </section>
    
    <!-- Фотогалерея с анимацией при наведении -->
    <section class="gallery">
        <h2 class="animate-title">Наши подопечные</h2>
        <div class="gallery-grid">
            <div class="gallery-item large hover-zoom">
                <img src="/static/images/home/dogs.jpg" alt="Собаки в приюте" onerror="this.style.display='none'; this.nextElementSibling.style.display='flex';">
                <div class="placeholder-image" style="display: none;">🐕 Собаки</div>
                <div class="gallery-overlay">🐕 Собаки</div>
            </div>
            <div class="gallery-item hover-rotate">
                <img src="/static/images/home/cata).jpg" alt="Кошка" onerror="this.style.display='none'; this.nextElementSibling.style.display='flex';">
                <div class="placeholder-image" style="display: none;">🐱 Кошка</div>
                <div class="gallery-overlay">🐱 Кошка</div>
            </div>
            <div class="gallery-item hover-rotate">
                <img src="/static/images/home/dogi.jpg" alt="Щенки" onerror="this.style.display='none'; this.nextElementSibling.style.display='flex';">
                <div class="placeholder-image" style="display: none;">🐶 Щенки</div>
                <div class="gallery-overlay">🐶 Щенки</div>
            </div>
            <div class="gallery-item hover-rotate">
                <img src="/static/images/home/kittens.jpg" alt="Котята" onerror="this.style.display='none'; this.nextElementSibling.style.display='flex';">
                <div class="placeholder-image" style="display: none;">🐱 Котята</div>
                <div class="gallery-overlay">🐱 Котята</div>
            </div>
            <div class="gallery-item hover-zoom">
                <img src="/static/images/home/helps.jpg" alt="Собака и кошка вместе" onerror="this.style.display='none'; this.nextElementSibling.style.display='flex';">
                <div class="placeholder-image" style="display: none;">🐕🐱 Друзья</div>
                <div class="gallery-overlay">🐕🐱 Друзья</div>
            </div>
        </div>
    </section>
    
    <!-- Цитата с анимацией появления текста -->
    <section class="quote">
        <div class="quote-box animate-scale">
            <p class="animate-text">«Мы в ответе за тех, кого приручили»</p>
            <span class="quote-author fade-in">— Антуан де Сент-Экзюпери</span>
        </div>
    </section>

    <!-- Коротко о главном с анимацией цифр -->
    <section class="highlights">
        <div class="highlight-card animate-count">
            <h3 class="count-number">350+</h3>
            <p>спасенных животных</p>
        </div>
        <div class="highlight-card animate-count">
            <h3 class="count-number">280</h3>
            <p>нашли новый дом</p>
        </div>
        <div class="highlight-card animate-count">
            <h3 class="count-number">7 лет</h3>
            <p>помогаем с 2018 года</p>
        </div>
    </section>
    
    <section class="cta-section">
        <div class="cta-box animate-pulse">
            <h2 class="shake">Приезжайте знакомиться</h2>
            <p>Мы всегда рады гостям. Посмотрите на наших подопечных вживую и выберите друга</p>
            <div class="cta-buttons">
                <a href="/pets" class="button-primary bounce-hover">Все питомцы</a>
            </div>
        </div>
    </section>
    
</div>