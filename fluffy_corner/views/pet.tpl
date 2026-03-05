% rebase('layout.tpl', title=title)
<link rel="stylesheet" type="text/css" href="/static/content/style_pet_card.css"/>

<h1 class="header-h1">{{ pet['name'] }}</h1>

<div class="pet-page">
    <div class="pet-info">
        <p class="info-text"><strong>Дата рождения:</strong> {{ pet['birth-date'] }}</p>
        <p class="info-text"><strong>Пол:</strong> {{ pet['gender'] }}</p>
        <p class="description-text">{{ pet['description'] }}</p>
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