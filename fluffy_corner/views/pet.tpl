% rebase('layout.tpl', title=title)
<link rel="stylesheet" type="text/css" href="/static/content/style_pet_card.css"/>

<h1 class="header-h1">{{ pet['name'] }}</h1>

<div class="pet-page">
    <div class="pet-info">
        <p class="info-text"><strong>Дата рождения:</strong> {{ pet['birth-date'] }}</p>
        <p class="info-text"><strong>Пол:</strong> {{ pet['gender'] }}</p>
        <p class="description-text">{{ pet['description'] }}</p>
        <script src="/static/scripts/popup-script.js"></script>
        <a class="auxiliary-link" href="#" onclick="openPopup()">
            <span>Как забрать питомца</span>
            <img src="/static/images/arrow.png">
        </a>
            <div id="popup" class="popup">
                <div class="popup-content">
                <div class="for-close-button">
                    <button class="close-button" onclick="closePopup()">х</button>
                </div>
                <div class="steps">
                <p class="text_step">Шаг 1</p>
                    <p>Выяснить, все ли ваши домочадцы готовы принять в семью нового члена. Помните, что питомец – не игрушка, или сувенир в подарок.
Обязательно свяжитесь с администратором приюта, задайте вопросы, выскажите свои пожелания по подбору питомца.
Пройдите собеседование и выясните, что требуется от вас, готовы ли вы подойти к усыновлению с полной ответственностью.
Заполните анкету кандидата усыновителя. На ее рассмотрение потребуется несколько дней.</p>
                    <p class="text_step">Шаг 2</p>                    
                    <p>Ожидайте решения администрации приюта. Будьте готовы к тому, что к вам придут сотрудники приюта, чтобы убедиться,
что животное будет передано в семью, где его ждут, и будут любить со всей ответственностью. Сотрудник приюта выезжает по месту жительства для проверки
и подтверждения предоставленной информации в заполненной вами анкете.<br><br><strong>Требования</strong>:
<br>- Безопасность наших ребятишек – это основное требование и обязательное условие передачи животного
<br>- Жилье должно находиться в собственности. Но если у вас на руках договор о долгосрочной аренде жилья, к нему обязательно нужно письменное согласие собственника на проживание в квартире животного
<br>- Подготовить место для сна, еды, игр животного</p>
                    <p class="text_step">Шаг 3</p>
                   <p>Ваша анкета одобрена. И вы можете забрать своего избранника. Убедитесь, что вы полностью готовы к тому, что прямо сегодня ваша семья
                   станет больше на одного члена.<br>Как происходит передача животного:
<br>В назначенный день мы встречаемся и заполняем двусторонний договор о передаче. При себе необходимо иметь паспорт и обязательно переноску для котиков и не крупных собак (лучше пластиковую
с надежными защелками), для крупных собак - поводок и намордник</p>
                    </div>
                </div>
            </div>
    </div>
    
    <script src="/static/scripts/pet_gallery-script.js"></script>
    
    <div class="gallery">
        <button class="nav-btn" onclick="prevPhoto()">❮</button>

        % for picture in pet['pictures']:
        <img class="pet-photo"
             src="{{ picture['source'] }}">
        % end

        <button class="nav-btn" onclick="nextPhoto()">❯</button>
    </div>
</div>