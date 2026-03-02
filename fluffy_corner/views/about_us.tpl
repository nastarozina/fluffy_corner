% rebase('layout.tpl', title=title)

<div class="about-page">
    
    <h1>О нашем приюте</h1>
    
    <!-- Основная информация -->
    <div class="about-section">
        <h2>Кто мы такие</h2>
        <p>Приют "Пушистый уголок" существует с 2018 года. За это время мы спасли и нашли дом для более чем 350 собак и кошек. Мы — команда неравнодушных людей, которые каждый день борются за жизнь и счастье бездомных животных.</p>
        <p>Наш приют находится в экологически чистом районе города, на территории 50 соток. У нас есть отдельные вольеры для собак, теплые комнаты для кошек, ветеринарный кабинет и зоогостиница. Мы принимаем животных со всего региона: брошенных, потерявшихся, пострадавших от жестокого обращения.</p>
    </div>
    
    <!-- Миссия -->
    <div class="mission-box">
        <p>«Наша миссия — дать шанс на счастливую жизнь каждому животному, которое оказалось в беде. Мы верим, что каждая собака и каждая кошка заслуживают любящую семью и уютный дом.»</p>
    </div>
    
    <!-- Статистика в цифрах -->
    <div class="about-section">
        <h2>Приют в цифрах</h2>
        <div class="about-grid">
            <div class="about-card">
                <span class="number">350+</span>
                <span class="label">животных спасено</span>
            </div>
            <div class="about-card">
                <span class="number">280</span>
                <span class="label">нашли новый дом</span>
            </div>
            <div class="about-card">
                <span class="number">50</span>
                <span class="label">подопечных сейчас</span>
            </div>
            <div class="about-card">
                <span class="number">7</span>
                <span class="label">лет помощи животным</span>
            </div>
        </div>
    </div>
    
    <!-- Как мы работаем -->
    <div class="about-section">
        <h2>Как мы работаем</h2>
        <div class="photo-grid">
            <div class="photo-placeholder">
                <img src="/static/images/about_us/priut.jpg" alt="Фото приюта" onerror="this.style.display='none'; this.nextElementSibling.style.display='flex';">
                <div class="placeholder-image" style="display: none;">[Фото приюта]</div>
            </div>
            <div class="photo-placeholder">
                <img src="/static/images/about_us/volier.jpg" alt="Вольеры для собак" onerror="this.style.display='none'; this.nextElementSibling.style.display='flex';">
                <div class="placeholder-image" style="display: none;">[Вольеры для собак]</div>
            </div>
            <div class="photo-placeholder">
                <img src="/static/images/about_us/catroom.jpg" alt="Кошачья комната" onerror="this.style.display='none'; this.nextElementSibling.style.display='flex';">
                <div class="placeholder-image" style="display: none;">[Кошачья комната]</div>
            </div>
            <div class="photo-placeholder">
                <img src="/static/images/about_us/veterinar_cab.jpg" alt="Ветеринарный кабинет" onerror="this.style.display='none'; this.nextElementSibling.style.display='flex';">
                <div class="placeholder-image" style="display: none;">[Ветеринарный кабинет]</div>
            </div>
        </div>
        
        <h3>Наша деятельность:</h3>
        <ul class="values-list">
            <li><strong>Спасение</strong> Мы выезжаем на заявки о брошенных и попавших в беду животных, сотрудничаем со службами спасения и неравнодушными гражданами.</li>
            <li><strong>Лечение</strong> Все поступившие животные проходят полный медицинский осмотр, вакцинацию, стерилизацию и необходимое лечение. С нами работают опытные ветеринары.</li>
            <li><strong>Передержка</strong> Животные живут в комфортных условиях до тех пор, пока не найдут хозяев. Мы обеспечиваем их кормом, уходом и вниманием.</li>
            <li><strong>Поиск дома</strong> Мы ищем ответственных хозяев, проверяем условия содержания, помогаем с адаптацией и всегда остаемся на связи после пристройства.</li>
        </ul>
    </div>
    
    <!-- Наша команда -->
    <div class="about-section">
        <h2>Наша команда</h2>
        <p>За каждым спасением стоят люди. Наша команда — это профессионалы, которые любят свое дело и посвящают жизнь помощи животным.</p>
        
        <div class="team-grid">
            <div class="team-card">
                <div class="team-photo-placeholder">
                    <img src="/static/images/about_us/nastya.jpg" alt="Рожина Анастасия" class="team-image" onerror="this.style.display='none'; this.nextElementSibling.style.display='flex';">
                    <div class="placeholder-image" style="display: none;">Основатель</div>
                </div>
                <h4>Рожина Анастасия</h4>
                <div class="position">Основатель приюта</div>
                <div class="description">Создала приют в 2018 году, когда спасла первых трех щенков. С тех пор ее жизнь полностью посвящена помощи бездомным животным. Лично участвует в сложных спасениях и координирует всю работу приюта.</div>
            </div>
            
            <div class="team-card">
                <div class="team-photo-placeholder">
                    <img src="/static/images/about_us/kirill.jpg" alt="Поручиков Кирилл" class="team-image" onerror="this.style.display='none'; this.nextElementSibling.style.display='flex';">
                    <div class="placeholder-image" style="display: none;">Кинолог</div>
                </div>
                <h4>Поручиков Кирилл</h4>
                <div class="position">Кинолог</div>
                <div class="description">Профессиональный кинолог с 10-летним стажем. Работает с собаками, имеющими психологические травмы, помогает им адаптироваться и готовит к жизни в семье. Благодаря Кириллу даже самые сложные собаки находят общий язык с людьми.</div>
            </div>
            
            <div class="team-card">
                <div class="team-photo-placeholder">
                    <img src="/static/images/about_us/anya.jpg" alt="Коваленко Анна" class="team-image" onerror="this.style.display='none'; this.nextElementSibling.style.display='flex';">
                    <div class="placeholder-image" style="display: none;">Ветеринар</div>
                </div>
                <h4>Коваленко Анна</h4>
                <div class="position">Ветеринарный врач</div>
                <div class="description">Ветеринарный врач высшей категории. Специализируется на хирургии и лечении тяжелобольных животных. Провела более 500 успешных операций. Анна возвращает к жизни даже тех, от кого отказались другие ветеринары.</div>
            </div>
        </div>
        
        <p style="margin-top: 30px; font-style: italic;">И это только ядро команды! С нами постоянно сотрудничают более 30 волонтеров, которые помогают выгуливать собак, ухаживать за кошками, фотографировать и искать дом для наших подопечных.</p>
    </div>
    
    <!-- Как помочь -->
    <div class="about-section">
        <h2>Как вы можете помочь</h2>
        <div class="photo-grid">
            <div class="photo-placeholder">
                <img src="/static/images/about_us/volonter.jpg" alt="Волонтеры с собаками" onerror="this.style.display='none'; this.nextElementSibling.style.display='flex';">
                <div class="placeholder-image" style="display: none;">[Волонтеры с собаками]</div>
            </div>
            <div class="photo-placeholder">
                <img src="/static/images/about_us/kormcat.jpg" alt="Кормление кошек" onerror="this.style.display='none'; this.nextElementSibling.style.display='flex';">
                <div class="placeholder-image" style="display: none;">[Кормление кошек]</div>
            </div>
        </div>
        
        <h3>Мы всегда рады любой помощи:</h3>
        <ul class="values-list">
            <li><strong>Финансовая помощь</strong> Средства идут на лечение, корма и содержание животных. Мы отчитываемся за каждый потраченный рубль в наших социальных сетях.</li>
            <li><strong>Корма и лекарства</strong> Мы принимаем корма (сухие и влажные), медикаменты, наполнители, амуницию, миски, лежанки и игрушки.</li>
            <li><strong>Волонтерство</strong> Вы можете приехать и помочь с выгулом собак, уборкой вольеров, фотографированием животных или взять питомца на временную передержку.</li>
            <li><strong>Информационная помощь</strong> Рассказывайте о нас друзьям, делитесь постами с животными, которым нужен дом. Чем больше людей узнает о нас, тем больше шансов у наших подопечных найти семью.</li>
        </ul>
    </div>
    
    <!-- История приюта -->
    <div class="about-section">
        <h2>Наша история</h2>
        <p>Все началось в 2018 году, когда основательница приюта Анастасия Рожина нашла на улице трех щенков в картонной коробке. Они были брошены на остановке в холодный осенний день. Она забрала их домой, выходила и нашла им любящих хозяев. Соседи и знакомые стали обращаться к ней с просьбами помочь другим животным. Так за первый год через ее руки прошло более 30 собак и кошек.</p>
        <p>Поняв, что одной справляться невозможно, Анастасия объединилась с единомышленниками. Сначала арендовали небольшое помещение на окраине города, потом переехали на собственную территорию благодаря помощи спонсоров. В 2020 году приют официально зарегистрировали как некоммерческую организацию.</p>
        <p>Сегодня "Пушистый уголок" — это современный приют, известный в городе и области. Мы участвуем в городских программах по стерилизации бездомных животных, проводим уроки доброты в школах и детских садах, постоянно развиваемся и учимся новому. Каждый год мы помогаем обрести дом десяткам собак и кошек.</p>
        <p>Самая трогательная история произошла в 2022 году, когда к нам приехала семья, которая 5 лет назад взяла у нас щенка. Они привезли его в гости, и собака сразу побежала к вольеру, где когда-то жила. Она помнила! Этот момент стал для нас символом того, что мы делаем правильное дело.</p>
    </div>
    
    <!-- Почему стоит взять питомца именно у нас -->
    <div class="about-section">
        <h2>Почему стоит взять питомца у нас</h2>
        <ul class="values-list">
            <li><strong>Все животные проверены</strong> Каждый наш подопечный проходит полное медицинское обследование, вакцинацию и стерилизацию. Вы получаете здорового питомца.</li>
            <li><strong>Мы знаем своих подопечных</strong> Наши сотрудники и волонтеры проводят с животными много времени и могут подробно рассказать о характере, привычках и особенностях каждого.</li>
            <li><strong>Помощь после пристройства</strong> Мы не бросаем своих выпускников. Вы всегда можете обратиться к нам за советом по воспитанию, кормлению или лечению.</li>
            <li><strong>Проверка условий</strong> Нам не все равно, в какие руки попадают животные. Мы всегда встречаемся с будущими хозяевами и помогаем подготовиться к появлению питомца в доме.</li>
        </ul>
    </div>
    
    <!-- Благодарность -->
    <div class="about-section" style="text-align: center;">
        <h2>Спасибо, что вы с нами!</h2>
        <p style="font-size: 18px;">Каждый ваш лайк, репост и рубль помощи спасает жизни. Только вместе мы можем сделать мир добрее.</p>
        <p style="font-size: 20px; color: #643E78; font-weight: bold; margin-top: 20px;">Присоединяйтесь к нашей большой семье и помогите нам подарить счастье тем, кто в этом так нуждается!</p>
    </div>
</div>