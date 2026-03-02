% rebase('layout.tpl', title=title, pets=pets)

<p class="head-p">{{ title }}</p>
<div class="pets-container">
% for pet in pets:
	<div class="block">
		<img class="image_pet" src="{{ pet['pictures'][0]['source'] }}">
		<a class="name_pet" href="/pets/{{ pet['id']}}">{{pet['name']}}</a>
		<p class="info_pet">Дата рождения: {{pet['birth-date']}}<br>{{pet['gender']}}</p>
	</div>
% end
</div>