% rebase('layout.tpl', title=title)
<div class="donate-page">
    
    <h1 class="header-h1">Денежный перевод</h1>
    
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
            </div>
        </div>
    </div>

    <!-- Электронные кошельки -->
    <div class="donate-top-left">
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
            </div>
        </div>
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
</style>