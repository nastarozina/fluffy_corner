% rebase('layout.tpl', title=title)
<link rel="stylesheet" type="text/css" href="/static/content/style_active-users.css"/>
<h1 class="header-h1">{{ title }}</h1>
<div>
<form action="/home" method="post" enctype="multipart/form-data">
        <p><input type="text" size="50" name="USERNAME" placeholder="Имя" style="border: 1px solid gray;" minlength="3" maxlength="100" required></p>
        <p><input type="text" size="50" name="USERNAME" placeholder="Фамилия" style="border: 1px solid gray;" minlength="3" maxlength="100" required></p>
        <p><textarea rows="2" cols="50" name="QUEST" placeholder="Деятельность" style="resize:none;" minlength="10" maxlength="300" required></textarea></p> 
        <p><input type="text" size="50" name="USERNAME" placeholder="Телефон" style="border: 1px solid gray;" minlength="3" maxlength="100" required></p>
        <p><input type="file" name="file" accept="image/*" required ></p>
        <p><input type="submit" value="Разместить" class="btn btn-default"></p>
</form>
</div>
</div>