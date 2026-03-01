<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ title }} - Приют "Пушистый уголок"</title>
    <link rel="stylesheet" type="text/css" href="/static/content/style.css" />
    <link rel="icon" href="/static/images/favicon.ico">
</head>

<body>
    <header class="site-header">
        <div class="logo-container">
            <a href="/">
                <img class="logo" src="static\images\лого.png">
            </a>
            <a href="/" class="navbar-brand">Приют для животных<br>"Пушистый уголок"</a>
        </div>
        <nav class="navbar">
            <a href="/pets">Найти питомца</a>
            <a href="/needs">Нужды</a>
            <a href="/stories">Счастливые истории</a>
            <a href="/about">О нас</a>
        </nav>
    <a class="button" href="/help">Помочь</a>
    </header>

    <div class="container body-content">
        {{!base}}
    </div>
    <footer class="footer">
            <p class="Contacts-p">Контакты</p>
            <p>Телефон бесплатной горячей линии:
                <span>+7 (999) 210-88-37 </span>
            </p>
            <p>E-mail:
                <span>rozhinaanasteisha@yandex.ru</span>
            </p>
            <p>Адрес:
                <span>Россия, Санкт-Петербург, Московский проспект, 149BA</span>
            </p>
            <div class="icons">
                <a href="https://t.me/loudlig" target="_blank">
                    <img class="icon" src="static\images\icon-telegram.png">
                </a>
                <a href="https://vk.com/id624802621" target="_blank">
                    <img class="icon" src="static\images\icon-vk.png">
                </a>
            </div>
            <hr>
        <p class="final">© 2026 Приют "Пушистый уголок". Все права защищены.</p>
    </footer>
</body>
</html>