% rebase('layout.tpl', title=title)
<div class="donate-page">
    
    <h1>💸 Денежный перевод</h1>
    
    <div class="donate-intro">
        <p>Спасибо, что хотите помочь нашим подопечным! Любая сумма — большой вклад в их здоровье и счастье. Выберите удобный способ перевода.</p>
    </div>

    <!-- Банковские карты -->
    <div class="donate-top">
        <div class="donate-section">
            <h2>💳 Банковские карты</h2>
            <p>Моментальные переводы по картам РФ</p>
            <div class="payment-details">
                <p><strong>Сбербанк:</strong> 1234 5678 9012 3456</p>
                <p><strong>Тинькофф:</strong> 5536 9178 4321 8765</p>
                <p><strong>Альфа-Банк:</strong> 4154 2812 7890 1234</p>
                <p class="card-holder">Получатель: Благотворительный фонд «Хвостики»</p>
            </div>
        </div>
        <div class="donate-header-image">
            <img src="/static/images/card-donate.png" alt="Оплата картой">
        </div>
    </div>

    <!-- Электронные кошельки -->
    <div class="donate-top-left">
        <div class="donate-header-image-left">
            <img src="/static/images/ewallets.png" alt="Электронные кошельки">
        </div>
        <div class="donate-section">
            <h2>📱 Электронные кошельки</h2>
            <ul>
                <li><strong>ЮMoney (Яндекс.Деньги):</strong> 4100123456789012</li>
                <li><strong>QIWI Кошелек:</strong> +7 (999) 123-45-67</li>
                <li><strong>WebMoney:</strong> R123456789012</li>
            </ul>
            <p class="note-small">Комиссия при переводе зависит от вашего кошелька</p>
        </div>
    </div>

    <!-- Мобильные переводы -->
    <div class="donate-top">
        <div class="donate-section">
            <h2>📲 С телефона</h2>
            <ul>
                <li><strong>МТС:</strong> +7 (916) 123-45-67</li>
                <li><strong>Билайн:</strong> +7 (905) 987-65-43</li>
                <li><strong>Мегафон:</strong> +7 (925) 555-77-88</li>
            </ul>
            <p class="note-small">Доступны переводы по номеру телефона через СБП</p>
        </div>
        <div class="donate-header-image">
            <img src="/static/images/mobile-pay.png" alt="Мобильные переводы">
        </div>
    </div>

    <!-- Криптовалюта и зарубежные переводы -->
    <div class="donate-top-left">
        <div class="donate-header-image-left">
            <img src="/static/images/crypto.png" alt="Криптовалюта">
        </div>
        <div class="donate-section">
            <h2>🌍 Для переводов из‑за границы</h2>
            <ul>
                <li><strong>PayPal:</strong> paws.help@example.com</li>
                <li><strong>USDT (TRC20):</strong> TXmBp1wXrP5eVnR2qK8jL9zQ3yF7gH4nJ6</li>
                <li><strong>Банковский перевод (SWIFT):</strong> напишите нам для получения реквизитов</li>
            </ul>
        </div>
    </div>

    <!-- НОВЫЙ БЛОК: QR-код для быстрой оплаты -->
    <div class="donate-qr-block">
        <div class="qr-container">
            <div class="qr-code">
                <img src="/static/images/qr-pay.png" alt="QR-код для оплаты">
                <p>Наведите камеру для оплаты</p>
            </div>
            <div class="qr-description">
                <h2>📱 Быстрая оплата по QR-коду</h2>
                <p>Мгновенный перевод через СБП (Система быстрых платежей).</p>
                <ul>
                    <li>Без комиссии</li>
                    <li>Мгновенное зачисление</li>
                    <li>Поддерживается всеми банками РФ</li>
                </ul>
                <div class="qr-button-wrapper">
                    <!-- Стрелка указывает НА QR-код (повернута вправо) -->
                    <div class="qr-arrow">
                        <svg viewBox="0 0 180 60" width="180" height="60">
                            <path d="M10,30 Q40,45 70,30 T130,30" stroke="#FF6B6B" stroke-width="4" fill="none" stroke-dasharray="6 4" />
                            <polygon points="145,30 130,22 130,38" fill="#FF6B6B" />
                            <text x="20" y="18" fill="#FF6B6B" font-size="12" font-weight="bold">сканируй</text>
                        </svg>
                    </div>
                    <a href="/donate/qr" class="qr-button">Оплатить по QR</a>
                </div>
            </div>
        </div>
    </div>

    <!-- НОВЫЙ БЛОК: Прокручивающиеся отзывы и доказательства -->
    <div class="testimonials-section">
        <h2>⭐ Результаты вашей помощи</h2>
        <p class="testimonials-subtitle">Ваши переводы уже спасли десятки жизней. Вот несколько историй:</p>
        
        <div class="testimonials-carousel">
            <button class="carousel-arrow carousel-arrow-left" onclick="scrollTestimonials(-1)">❮</button>
            
            <div class="testimonials-container" id="testimonialsContainer">
                <!-- Карточка 1 -->
                <div class="testimonial-card">
                    <div class="testimonial-image">
                        <img src="/static/images/rex.png" alt="Фото Рекса" onerror="this.src='data:image/svg+xml;utf8,<svg xmlns=\'http://www.w3.org/2000/svg\' width=\'80\' height=\'80\' viewBox=\'0 0 80 80\'><rect width=\'80\' height=\'80\' fill=\'%23e6f0ff\'/><circle cx=\'40\' cy=\'30\' r=\'15\' fill=\'%23643E78\' opacity=\'0.3\'/><path d=\'M20 65 Q40 50 60 65\' stroke=\'%23643E78\' stroke-width=\'4\' fill=\'none\'/><circle cx=\'30\' cy=\'25\' r=\'3\' fill=\'%23643E78\'/><circle cx=\'50\' cy=\'25\' r=\'3\' fill=\'%23643E78\'/><text x=\'40\' y=\'70\' text-anchor=\'middle\' fill=\'%23643E78\' font-size=\'10\'>🐕</text></svg>'">
                    </div>
                    <h3>Рекс, 5 лет</h3>
                    <p class="testimonial-date">Найден в феврале 2025</p>
                    <p class="testimonial-text">Был сбит машиной, нужна была срочная операция на лапе. Благодаря вашему переводу (12 500 ₽) хирургия прошла успешно. Сейчас Рекс уже бегает!</p>
                    <div class="testimonial-proof">
                        <span class="proof-tag">📸 Фото до/после</span>
                        <span class="proof-tag">📄 Чек операции</span>
                    </div>
                </div>
                
                <!-- Карточка 2 -->
                <div class="testimonial-card">
                    <div class="testimonial-image">
                        <img src="/static/images/placeholder-cat.jpg" alt="Фото Муси" onerror="this.src='data:image/svg+xml;utf8,<svg xmlns=\'http://www.w3.org/2000/svg\' width=\'80\' height=\'80\' viewBox=\'0 0 80 80\'><rect width=\'80\' height=\'80\' fill=\'%23f9f5ff\'/><circle cx=\'40\' cy=\'30\' r=\'15\' fill=\'%23FF6B6B\' opacity=\'0.3\'/><path d=\'M25 60 L40 45 L55 60\' stroke=\'%23FF6B6B\' stroke-width=\'4\' fill=\'none\'/><circle cx=\'30\' cy=\'25\' r=\'3\' fill=\'%23FF6B6B\'/><circle cx=\'50\' cy=\'25\' r=\'3\' fill=\'%23FF6B6B\'/><text x=\'40\' y=\'75\' text-anchor=\'middle\' fill=\'%23FF6B6B\' font-size=\'12\'>😺</text></svg>'">
                    </div>
                    <h3>Муся, 2 года</h3>
                    <p class="testimonial-date">Найдена в декабре 2024</p>
                    <p class="testimonial-text">Сильное обезвоживание и истощение. 3 недели интенсивной терапии. Ваши 8 200 ₽ покрыли капельницы и специальное питание. Сейчас Муся ищет дом!</p>
                    <div class="testimonial-proof">
                        <span class="proof-tag">📊 Анализы</span>
                        <span class="proof-tag">📸 Фото</span>
                    </div>
                </div>
                
                <!-- Карточка 3 -->
                <div class="testimonial-card">
                    <div class="testimonial-image">
                        <img src="/static/images/placeholder-dog2.jpg" alt="Фото Бима" onerror="this.src='data:image/svg+xml;utf8,<svg xmlns=\'http://www.w3.org/2000/svg\' width=\'80\' height=\'80\' viewBox=\'0 0 80 80\'><rect width=\'80\' height=\'80\' fill=\'%23e6f0ff\'/><circle cx=\'40\' cy=\'30\' r=\'15\' fill=\'%23643E78\' opacity=\'0.3\'/><ellipse cx=\'40\' cy=\'50\' rx=\'20\' ry=\'10\' stroke=\'%23643E78\' stroke-width=\'3\' fill=\'none\'/><circle cx=\'30\' cy=\'25\' r=\'3\' fill=\'%23643E78\'/><circle cx=\'50\' cy=\'25\' r=\'3\' fill=\'%23643E78\'/><text x=\'40\' y=\'70\' text-anchor=\'middle\' fill=\'%23643E78\' font-size=\'10\'>🐶</text></svg>'">
                    </div>
                    <h3>Бим, 7 лет</h3>
                    <p class="testimonial-date">В приюте с 2023</p>
                    <p class="testimonial-text">Диагностировали опухоль. Операция стоила 18 000 ₽. Вы собрали всю сумму за 2 дня! Сейчас Бим здоров и ждёт хозяев.</p>
                    <div class="testimonial-proof">
                        <span class="proof-tag">🏥 Выписка</span>
                        <span class="proof-tag">📹 Видео</span>
                    </div>
                </div>
                
                <!-- Карточка 4 -->
                <div class="testimonial-card">
                    <div class="testimonial-image">
                        <img src="/static/images/placeholder-cat2.jpg" alt="Фото Кнопки" onerror="this.src='data:image/svg+xml;utf8,<svg xmlns=\'http://www.w3.org/2000/svg\' width=\'80\' height=\'80\' viewBox=\'0 0 80 80\'><rect width=\'80\' height=\'80\' fill=\'%23f9f5ff\'/><circle cx=\'40\' cy=\'30\' r=\'15\' fill=\'%23FF6B6B\' opacity=\'0.3\'/><path d=\'M20 55 Q40 70 60 55\' stroke=\'%23FF6B6B\' stroke-width=\'3\' fill=\'none\'/><circle cx=\'30\' cy=\'25\' r=\'2.5\' fill=\'%23FF6B6B\'/><circle cx=\'50\' cy=\'25\' r=\'2.5\' fill=\'%23FF6B6B\'/><text x=\'40\' y=\'70\' text-anchor=\'middle\' fill=\'%23FF6B6B\' font-size=\'12\'>🐱</text></svg>'">
                    </div>
                    <h3>Кнопка, 1 год</h3>
                    <p class="testimonial-date">Найдена в марте 2025</p>
                    <p class="testimonial-text">Сломана челюсть, требовалась сложная операция и долгая реабилитация. Спасибо за 15 300 ₽ — теперь Кнопка может есть сама!</p>
                    <div class="testimonial-proof">
                        <span class="proof-tag">📸 Рентген</span>
                        <span class="proof-tag">📄 Счёт</span>
                    </div>
                </div>
                
                <!-- Карточка 5 -->
                <div class="testimonial-card">
                    <div class="testimonial-image">
                        <img src="/static/images/placeholder-dog3.jpg" alt="Фото Жучки" onerror="this.src='data:image/svg+xml;utf8,<svg xmlns=\'http://www.w3.org/2000/svg\' width=\'80\' height=\'80\' viewBox=\'0 0 80 80\'><rect width=\'80\' height=\'80\' fill=\'%23e6f0ff\'/><circle cx=\'40\' cy=\'30\' r=\'15\' fill=\'%23643E78\' opacity=\'0.3\'/><circle cx=\'25\' cy=\'25\' r=\'3\' fill=\'%23643E78\'/><circle cx=\'55\' cy=\'25\' r=\'3\' fill=\'%23643E78\'/><path d=\'M30 45 Q40 55 50 45\' stroke=\'%23643E78\' stroke-width=\'3\' fill=\'none\'/><text x=\'40\' y=\'70\' text-anchor=\'middle\' fill=\'%23643E78\' font-size=\'10\'>🐕</text></svg>'">
                    </div>
                    <h3>Жучка, 4 года</h3>
                    <p class="testimonial-date">В приюте с 2024</p>
                    <p class="testimonial-text">Требовалась срочная вакцинация и обработка от паразитов для 6 щенков. Ваши 5 700 ₽ спасли весь помёт!</p>
                    <div class="testimonial-proof">
                        <span class="proof-tag">📸 Щенки</span>
                        <span class="proof-tag">📋 Сертификаты</span>
                    </div>
                </div>
            </div>
            
            <button class="carousel-arrow carousel-arrow-right" onclick="scrollTestimonials(1)">❯</button>
        </div>
        
        <!-- Индикаторы прокрутки -->
        <div class="carousel-dots">
            <span class="dot active-dot" onclick="goToTestimonial(0)"></span>
            <span class="dot" onclick="goToTestimonial(1)"></span>
            <span class="dot" onclick="goToTestimonial(2)"></span>
            <span class="dot" onclick="goToTestimonial(3)"></span>
            <span class="dot" onclick="goToTestimonial(4)"></span>
        </div>
    </div>

    <!-- Кнопка быстрого перевода и комментарий (последний блок) -->
    <div class="donate-bottom">
        <div class="donate-quick">
            <p>Или нажмите кнопку для перехода на безопасную форму оплаты:</p>
            <div class="button-with-arrow-bottom">
                <a href="/donate/pay" class="button-large">💖 Перевести деньги</a>
                <div class="wavy-arrow-bottom">
                    <svg viewBox="0 0 200 60" width="200" height="60">
                        <path d="M20,30 Q60,45 100,30 T180,30" stroke="#643E78" stroke-width="4" fill="none" stroke-dasharray="6 4" />
                        <polygon points="195,30 180,22 180,38" fill="#643E78" />
                        <text x="40" y="18" fill="#643E78" font-size="14" font-weight="bold">самый быстрый способ</text>
                    </svg>
                </div>
            </div>
        </div>
        <p class="donate-note">🌟 Все переводы поступают напрямую в фонд. Вы всегда можете запросить отчёт о расходовании средств.</p>
    </div>

</div>

<style>
/* === Стили для страницы donate-page (аналогично needs-page) === */
.donate-page {
    max-width: 1200px;
    margin: 0 auto;
    padding: 30px 40px;
    flex: 1;
    position: relative;
}

.donate-page h1 {
    font-size: 48px;
    color: #643E78;
    margin-bottom: 20px;
    position: relative;
    padding-bottom: 15px;
}

.donate-page h1::after {
    content: '';
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100px;
    height: 4px;
    background-color: cornflowerblue;
    border-radius: 2px;
}

.donate-intro {
    background-color: #f8f9fa;
    padding: 25px 30px;
    border-radius: 20px;
    margin: 30px 0 40px 0;
    border-left: 5px solid #643E78;
}

.donate-intro p {
    font-size: 20px;
    line-height: 1.6;
    color: #333;
    margin: 0;
}

/* Основные блоки (чередование) */
.donate-top,
.donate-top-left {
    display: flex;
    gap: 40px;
    align-items: flex-start;
    margin-bottom: 50px;
}

.donate-top .donate-section,
.donate-top-left .donate-section {
    flex: 1;
}

/* Стили секций */
.donate-section {
    background-color: white;
    border-radius: 15px;
    padding: 25px;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
    border: 1px solid #eee;
}

.donate-top .donate-section {
    background-color: #f9f5ff;  /* светло-фиолетовый */
}

.donate-top-left .donate-section {
    background-color: #e6f0ff;   /* светло-голубой */
}

.donate-section:hover {
    transform: translateY(-5px);
    box-shadow: 0 8px 20px rgba(100, 62, 120, 0.15);
}

.donate-section h2 {
    font-size: 32px;
    color: #181e21;
    margin-bottom: 20px;
    display: flex;
    align-items: center;
    gap: 10px;
}

.donate-section h2::before {
    content: '🐾';
    font-size: 28px;
    opacity: 0.8;
}

.donate-section p {
    font-size: 18px;
    color: #444;
    margin-bottom: 15px;
    line-height: 1.5;
}

.donate-section ul {
    list-style: none;
    padding: 0;
    margin: 0;
}

.donate-section ul li {
    font-size: 17px;
    color: #555;
    padding: 10px 0 10px 35px;
    position: relative;
    border-bottom: 1px solid #f0f0f0;
}

.donate-section ul li:last-child {
    border-bottom: none;
}

.donate-section ul li::before {
    content: '✓';
    color: #643E78;
    font-weight: bold;
    position: absolute;
    left: 10px;
    font-size: 18px;
}

/* Карточка платёжных реквизитов */
.payment-details {
    background-color: #f3f0f5;
    border-radius: 12px;
    padding: 20px;
    margin-top: 20px;
}

.payment-details p {
    margin: 10px 0;
    font-size: 18px;
    color: #181e21;
}

.payment-details strong {
    color: #643E78;
    min-width: 140px;
    display: inline-block;
}

.card-holder {
    font-style: italic;
    color: #666;
    border-top: 1px dashed #ccc;
    padding-top: 10px;
    margin-top: 10px;
}

.note-small {
    font-size: 15px;
    color: #777;
    margin-top: 15px;
    font-style: italic;
}

/* Изображения (как на странице нужд) */
.donate-header-image,
.donate-header-image-left {
    flex: 0 0 360px;
}

.donate-header-image img,
.donate-header-image-left img {
    width: 100%;
    border-radius: 16px;
    box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
    transition: 0.4s ease;
}

.donate-header-image img {
    transform: rotate(2deg);
}

.donate-header-image-left img {
    transform: rotate(-2deg);
}

.donate-header-image img:hover,
.donate-header-image-left img:hover {
    transform: rotate(0) scale(1.05);
}

/* === НОВЫЙ БЛОК: QR-код === */
.donate-qr-block {
    margin: 60px 0;
    background: linear-gradient(145deg, #f0eef3, #ffffff);
    border-radius: 40px;
    padding: 40px;
    box-shadow: 0 10px 30px rgba(100, 62, 120, 0.15);
}

.qr-container {
    display: flex;
    gap: 50px;
    align-items: center;
    justify-content: center;
    flex-wrap: wrap;
}

.qr-code {
    text-align: center;
    background: white;
    padding: 25px;
    border-radius: 30px;
    box-shadow: 0 5px 20px rgba(0,0,0,0.1);
}

.qr-code img {
    width: 200px;
    height: 200px;
    display: block;
    margin-bottom: 15px;
}

.qr-code p {
    font-size: 16px;
    color: #643E78;
    font-weight: bold;
}

.qr-description {
    flex: 1;
    min-width: 300px;
}

.qr-description h2 {
    font-size: 32px;
    color: #181e21;
    margin-bottom: 15px;
}

.qr-description ul {
    list-style: none;
    padding: 0;
    margin: 20px 0;
}

.qr-description ul li {
    padding: 8px 0 8px 30px;
    position: relative;
    font-size: 18px;
}

.qr-description ul li::before {
    content: '✅';
    position: absolute;
    left: 0;
    color: #4CAF50;
}

.qr-button-wrapper {
    display: flex;
    align-items: center;
    gap: 20px;
    margin-top: 25px;
}

.qr-arrow svg {
    display: block;
    /* Стрелка направлена ВПРАВО (к QR-коду) */
}

.qr-button {
    display: inline-block;
    padding: 15px 35px;
    background-color: #FF6B6B;
    color: white;
    text-decoration: none;
    border-radius: 40px;
    font-size: 20px;
    font-weight: bold;
    box-shadow: 0 5px 15px rgba(255, 107, 107, 0.3);
    transition: all 0.3s ease;
}

.qr-button:hover {
    transform: scale(1.05);
    background-color: #ff5252;
    box-shadow: 0 8px 20px rgba(255, 107, 107, 0.4);
}

/* === НОВЫЙ БЛОК: Карусель отзывов === */
.testimonials-section {
    margin: 70px 0 50px;
    padding: 30px 20px;
    background-color: #f8f5ff;
    border-radius: 50px;
    position: relative;
}

.testimonials-section h2 {
    font-size: 36px;
    color: #643E78;
    text-align: center;
    margin-bottom: 10px;
}

.testimonials-subtitle {
    text-align: center;
    font-size: 18px;
    color: #666;
    margin-bottom: 40px;
}

.testimonials-carousel {
    display: flex;
    align-items: center;
    gap: 15px;
    position: relative;
}

.testimonials-container {
    display: flex;
    overflow-x: auto;
    scroll-behavior: smooth;
    gap: 25px;
    padding: 20px 10px;
    scrollbar-width: none; /* Firefox */
    -ms-overflow-style: none; /* IE/Edge */
    flex: 1;
}

.testimonials-container::-webkit-scrollbar {
    display: none; /* Chrome/Safari */
}

.testimonial-card {
    min-width: 300px;
    background: white;
    border-radius: 30px;
    padding: 25px;
    box-shadow: 0 5px 20px rgba(0,0,0,0.08);
    transition: transform 0.3s ease;
    border: 1px solid #eee;
    flex-shrink: 0;
}

.testimonial-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 12px 30px rgba(100, 62, 120, 0.15);
}

.testimonial-image {
    width: 80px;
    height: 80px;
    margin: 0 auto 15px;
    border-radius: 50%;
    overflow: hidden;
    border: 3px solid #643E78;
    box-shadow: 0 5px 10px rgba(0,0,0,0.1);
}

.testimonial-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    display: block;
}

.testimonial-card h3 {
    font-size: 22px;
    color: #181e21;
    margin-bottom: 5px;
    text-align: center;
}

.testimonial-date {
    font-size: 14px;
    color: #999;
    margin-bottom: 15px;
    font-style: italic;
    text-align: center;
}

.testimonial-text {
    font-size: 16px;
    color: #444;
    line-height: 1.5;
    margin-bottom: 20px;
}

.testimonial-proof {
    display: flex;
    gap: 10px;
    flex-wrap: wrap;
    justify-content: center;
}

.proof-tag {
    background-color: #e6f0ff;
    color: #643E78;
    padding: 5px 12px;
    border-radius: 30px;
    font-size: 13px;
    font-weight: 500;
    border: 1px solid rgba(100, 62, 120, 0.2);
}

.carousel-arrow {
    background: white;
    border: none;
    width: 50px;
    height: 50px;
    border-radius: 50%;
    font-size: 24px;
    color: #643E78;
    cursor: pointer;
    box-shadow: 0 3px 10px rgba(0,0,0,0.1);
    transition: all 0.2s ease;
    flex-shrink: 0;
    display: flex;
    align-items: center;
    justify-content: center;
}

.carousel-arrow:hover {
    background: #643E78;
    color: white;
    transform: scale(1.1);
}

.carousel-dots {
    display: flex;
    justify-content: center;
    gap: 12px;
    margin-top: 25px;
}

.dot {
    width: 12px;
    height: 12px;
    border-radius: 50%;
    background: #ccc;
    cursor: pointer;
    transition: all 0.2s ease;
}

.dot:hover {
    background: #999;
}

.active-dot {
    background: #643E78;
    transform: scale(1.2);
}

/* Нижний блок с большой кнопкой */
.donate-bottom {
    margin: 60px 0 30px;
    background: linear-gradient(135deg, #f3f0f5 0%, #ffffff 100%);
    border-radius: 40px;
    padding: 40px;
    text-align: center;
    box-shadow: 0 5px 20px rgba(0, 0, 0, 0.1);
}

.donate-quick p {
    font-size: 20px;
    color: #333;
    margin-bottom: 25px;
}

.button-with-arrow-bottom {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 20px;
    flex-wrap: wrap;
}

.button-large {
    display: inline-block;
    padding: 18px 45px;
    background-color: #643E78;
    color: white;
    text-decoration: none;
    border-radius: 50px;
    font-size: 24px;
    font-weight: bold;
    box-shadow: 0 8px 20px rgba(100, 62, 120, 0.3);
    transition: all 0.3s ease;
    position: relative;
    overflow: hidden;
}

.button-large::after {
    content: '';
    position: absolute;
    top: 0;
    left: -100%;
    width: 100%;
    height: 100%;
    background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.3), transparent);
    transition: left 0.5s ease;
}

.button-large:hover::after {
    left: 100%;
}

.button-large:hover {
    transform: scale(1.05);
    background-color: #7e57a0;
    box-shadow: 0 12px 28px rgba(100, 62, 120, 0.4);
}

.wavy-arrow-bottom {
    animation: bounce 1s ease-in-out infinite alternate;
}

.wavy-arrow-bottom svg {
    display: block;
}

@keyframes bounce {
    from { transform: translateY(0); }
    to { transform: translateY(-5px); }
}

.donate-note {
    margin-top: 30px;
    font-size: 18px;
    color: #643E78;
    background-color: #fff0e0;
    padding: 15px 20px;
    border-radius: 50px;
    display: inline-block;
}

/* Адаптация */
@media (max-width: 900px) {
    .donate-top,
    .donate-top-left {
        flex-direction: column;
    }
    
    .donate-header-image,
    .donate-header-image-left {
        flex: 0 0 auto;
        width: 100%;
        max-width: 400px;
        margin: 0 auto;
    }
    
    .qr-container {
        flex-direction: column;
        text-align: center;
    }
    
    .qr-button-wrapper {
        justify-content: center;
    }
    
    .testimonial-card {
        min-width: 260px;
    }
}

@media (max-width: 480px) {
    .donate-page h1 {
        font-size: 32px;
    }
    
    .button-large {
        font-size: 20px;
        padding: 15px 30px;
    }
    
    .qr-code img {
        width: 150px;
        height: 150px;
    }
}
</style>

<script>
// Функции для прокрутки карусели отзывов
function scrollTestimonials(direction) {
    const container = document.getElementById('testimonialsContainer');
    const scrollAmount = 330; // Ширина карточки + отступ
    container.scrollBy({
        left: direction * scrollAmount,
        behavior: 'smooth'
    });
    
    // Обновляем активные точки
    updateDots();
}

function goToTestimonial(index) {
    const container = document.getElementById('testimonialsContainer');
    const scrollAmount = 330 * index;
    container.scrollTo({
        left: scrollAmount,
        behavior: 'smooth'
    });
    
    // Обновляем активные точки
    setTimeout(updateDots, 300);
}

function updateDots() {
    const container = document.getElementById('testimonialsContainer');
    const scrollPosition = container.scrollLeft;
    const cardWidth = 330;
    const activeIndex = Math.round(scrollPosition / cardWidth);
    
    const dots = document.querySelectorAll('.dot');
    dots.forEach((dot, index) => {
        if (index === activeIndex) {
            dot.classList.add('active-dot');
        } else {
            dot.classList.remove('active-dot');
        }
    });
}

// Обновляем точки при прокрутке
document.addEventListener('DOMContentLoaded', function() {
    const container = document.getElementById('testimonialsContainer');
    if (container) {
        container.addEventListener('scroll', updateDots);
    }
});
</script>