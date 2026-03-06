% rebase('layout.tpl', title=title, pets=pets)
<link rel="stylesheet" type="text/css" href="/static/content/style_pet-catalog.css"/>
<h1 class="header-h1">{{ title }}</h1>
<div class="pets-container">
% for pet in pets:
	<div class="block">
		<img class="image_pet" src="{{ pet['pictures'][0]['source'] }}">
		<a class="name_pet" href="/pets/{{ pet['id']}}">{{pet['name']}}</a>
		<p class="info_pet">
			<span class="birth">Дата рождения: {{pet['birth-date']}}</span>
			<span class="gender">{{pet['gender']}}</span>
		</p>
	</div>
% end
</div>