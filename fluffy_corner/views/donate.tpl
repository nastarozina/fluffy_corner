% rebase('layout.tpl', title=title)

<div class="donate-page">
    
    <h1>💸 Денежный перевод</h1>
    
    <div class="donate-intro">
        <p>Спасибо, что хотите помочь нашим подопечным! Любая сумма — большой вклад в их здоровье и счастье. Выберите удобный способ перевода.</p>
    </div>
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

    <!-- Кнопка быстрого перевода и комментарий -->
    <div class="donate-bottom">
        <div class="donate-quick">
            <p>Или нажмите кнопку для перехода на безопасную форму оплаты:</p>
            <div class="button-with-arrow-bottom">
                <a href="/donate/pay" class="button-large">💖 Перевести деньги</a>
                <div class="wavy-arrow-bottom">
                    <svg viewBox="0 0 200 60" width="200" height="60">
                        <path d="M20,30 Q60,15 100,30 T180,30" stroke="#643E78" stroke-width="4" fill="none" stroke-dasharray="6 4" />
                        <polygon points="195,30 180,22 180,38" fill="#643E78" />
                        <text x="40" y="18" fill="#643E78" font-size="14" font-weight="bold">самый быстрый способ</text>
                    </svg>
                </div>
            </div>
        </div>
        <p class="donate-note">🌟 Все переводы поступают напрямую в фонд. Вы всегда можете запросить отчёт о расходовании средств.</p>
    </div>

</div>