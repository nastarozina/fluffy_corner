% rebase('layout.tpl', title='Главная')

<div class="home-page">
    
    <!-- Герой-секция -->
    <section class="hero">
        <div class="hero-content">
            <h1>Пушистый уголок</h1>
            <p class="hero-subtitle">Каждое животное заслуживает дом и любящую семью</p>
            <div class="hero-buttons">
                <a href="/pets" class="button-primary">Хочу найти друга</a>
                <a href="/needs" class="button-secondary">Хочу помочь</a>
            </div>
        </div>
        <div class="hero-image">
            <div class="hero-photo-placeholder">
                <img src="/static/images/home/hero-dog.jpg" alt="Счастливая собака" onerror="this.style.display='none'; this.nextElementSibling.style.display='flex';">
                <div class="placeholder-image" style="display: none;">🐕 Счастливая собака</div>
            </div>
        </div>
    </section>
    
    <!-- Факты о приюте -->
    <section class="facts">
        <h2>Почему нам можно доверять</h2>
        <div class="facts-grid">
            <div class="fact-item">
                <div class="fact-icon">🏠</div>
                <h3>Свой приют</h3>
                <p>Территория 50 соток с вольерами и теплыми комнатами</p>
            </div>
            <div class="fact-item">
                <div class="fact-icon">❤️</div>
                <h3>Забота о каждом</h3>
                <p>Ветеринарный контроль и индивидуальный подход</p>
            </div>
            <div class="fact-item">
                <div class="fact-icon">🤝</div>
                <h3>Помощь после</h3>
                <p>Мы на связи даже после того, как питомец нашел дом</p>
            </div>
            <div class="fact-item">
                <div class="fact-icon">📞</div>
                <h3>Всегда на связи</h3>
                <p>Горячая линия и поддержка 24/7</p>
            </div>
        </div>
    </section>
    
    <!-- Фотогалерея -->
    <section class="gallery">
        <h2>Наши подопечные</h2>
        <div class="gallery-grid">
            <div class="gallery-item large">
                <img src="/static/images/home/gallery-1.jpg" alt="Собаки в приюте" onerror="this.style.display='none'; this.nextElementSibling.style.display='flex';">
                <div class="placeholder-image" style="display: none;">🐕 Собаки</div>
            </div>
            <div class="gallery-item">
                <img src="/static/images/home/gallery-2.jpg" alt="Кошка" onerror="this.style.display='none'; this.nextElementSibling.style.display='flex';">
                <div class="placeholder-image" style="display: none;">🐱 Кошка</div>
            </div>
            <div class="gallery-item">
                <img src="/static/images/home/gallery-3.jpg" alt="Щенки" onerror="this.style.display='none'; this.nextElementSibling.style.display='flex';">
                <div class="placeholder-image" style="display: none;">🐶 Щенки</div>
            </div>
            <div class="gallery-item">
                <img src="/static/images/home/gallery-4.jpg" alt="Котята" onerror="this.style.display='none'; this.nextElementSibling.style.display='flex';">
                <div class="placeholder-image" style="display: none;">🐱 Котята</div>
            </div>
            <div class="gallery-item">
                <img src="/static/images/home/gallery-5.jpg" alt="Собака и кошка вместе" onerror="this.style.display='none'; this.nextElementSibling.style.display='flex';">
                <div class="placeholder-image" style="display: none;">🐕🐱 Друзья</div>
            </div>
        </div>
    </section>
    
    <!-- Цитата -->
    <section class="quote">
        <div class="quote-box">
            <p>«Мы в ответе за тех, кого приручили»</p>
            <span class="quote-author">— Антуан де Сент-Экзюпери</span>
        </div>
    </section>
    
    <!-- Они ждут свой дом (3 питомца с новыми кличками) -->
    <section class="featured-pets">
        <h2>Они ждут свой дом</h2>
        <div class="pets-showcase">
            <div class="pet-showcase-card">
                <div class="pet-showcase-photo">
                    <img src="/static/images/home/pet-baron.jpg" alt="Барон" onerror="this.style.display='none'; this.nextElementSibling.style.display='flex';">
                    <div class="placeholder-image" style="display: none;">🐕 Барон</div>
                </div>
                <div class="pet-showcase-info">
                    <h3>Барон</h3>
                    <p>Благородный пёс с добрым сердцем. Любит долгие прогулки и обниматься.</p>
                    <a href="/pets#baron" class="pet-showcase-link">Познакомиться →</a>
                </div>
            </div>
            
            <div class="pet-showcase-card">
                <div class="pet-showcase-photo">
                    <img src="/static/images/home/pet-simba.jpg" alt="Симба" onerror="this.style.display='none'; this.nextElementSibling.style.display='flex';">
                    <div class="placeholder-image" style="display: none;">🐱 Симба</div>
                </div>
                <div class="pet-showcase-info">
                    <h3>Симба</h3>
                    <p>Рыжий кот с львиным характером. Ласковый, игривый, обожает сидеть на руках.</p>
                    <a href="/pets#simba" class="pet-showcase-link">Познакомиться →</a>
                </div>
            </div>
            
            <div class="pet-showcase-card">
                <div class="pet-showcase-photo">
                    <img src="/static/images/home/pet-laska.jpg" alt="Ласка" onerror="this.style.display='none'; this.nextElementSibling.style.display='flex';">
                    <div class="placeholder-image" style="display: none;">🐕 Ласка</div>
                </div>
                <div class="pet-showcase-info">
                    <h3>Ласка</h3>
                    <p>Нежная и преданная собачка. Идеальный компаньон для спокойных вечеров.</p>
                    <a href="/pets#laska" class="pet-showcase-link">Познакомиться →</a>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Коротко о главном -->
    <section class="highlights">
        <div class="highlight-card">
            <h3>350+</h3>
            <p>спасенных животных</p>
        </div>
        <div class="highlight-card">
            <h3>280</h3>
            <p>нашли новый дом</p>
        </div>
        <div class="highlight-card">
            <h3>7 лет</h3>
            <p>помогаем с 2018 года</p>
        </div>
    </section>
    
    <!-- Призыв к действию -->
    <section class="cta-section">
        <div class="cta-box">
            <h2>Приезжайте знакомиться</h2>
            <p>Мы всегда рады гостям. Посмотрите на наших подопечных вживую и выберите друга</p>
            <div class="cta-buttons">
                <a href="/pets" class="button-primary">Все питомцы</a>
            </div>
        </div>
    </section>
    
</div>