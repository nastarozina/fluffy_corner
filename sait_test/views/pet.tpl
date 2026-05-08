% rebase('layout.tpl', title=title)
<link rel="stylesheet" type="text/css" href="/static/content/style_pet_card.css"/>

<h1 class="header-h1">{{ pet['name'] }}</h1>

<div class="pet-page">

    <div class="gallery">
        % for picture in pet['pictures']:
            <img class="pet-photo" src="{{ picture['source'] }}">
        % end
    </div>

    <div class="pet-info">
        <p><strong>Дата рождения:</strong> {{ pet['birth-date'] }}</p>
        <p><strong>Пол:</strong> {{ pet['gender'] }}</p>
        <p><strong>Описание:</strong></p>
        <p>{{ pet['description'] }}</p>
    </div>

</div>