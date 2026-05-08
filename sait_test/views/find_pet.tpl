% rebase('layout.tpl', title=title, pets=pets)
<link rel="stylesheet" type="text/css" href="/static/content/style_for_pet.css"/>
<h1 class="header-h1">{{ title }}</h1>
<div class="pets-container">
% for pet in pets:
	<div class="block">
		<img class="image_pet" src="{{ pet['pictures'][0]['source'] }}">
		<a class="name_pet" href="/pets/{{ pet['id']}}">{{pet['name']}}</a>
		<p class="info_pet">Дата рождения: {{pet['birth-date']}}<br>{{pet['gender']}}</p>
	</div>
% end
</div>