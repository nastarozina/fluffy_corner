% rebase('layout.tpl', title=title, active_users = active_users, sort_type=sort_type)
<link rel="stylesheet" type="text/css" href="/static/content/style_active-users.css"/>
<h1 class="header-h1">{{ title }}</h1>
<div class="sort-container">
    <a href="/activeUsers?sort=lastname_asc" class="sort-btn {{'active' if sort_type == 'lastname_asc' else ''}}">
        A–Я ↑
    </a>

    <a href="/activeUsers?sort=lastname_desc" class="sort-btn {{'active' if sort_type == 'lastname_desc' else ''}}">
        Я–A ↓
    </a>
</div>
<div>
<div class="users-container">
% for user in active_users:
  <div class="block">
    <img class="photo" src="{{user['photo']}}" alt="photo">

    <p class="info_user">
      <span class="last_name">{{user['last_name']}}</span>
      <span class="first_name">{{user['first_name']}}</span>
    </p>

    <p class="description">{{user['description']}}</p>

    <p class="inscription_phone">
      <span><img class="icon_telephone" src="/static/images/icon-telephone.png"></span>
      <span class="phone">{{user['phone']}}</span>
    </p>
  </div>
% end
</div>
<hr class="line">
<form action="/activeUsers/add" method="post" enctype="multipart/form-data">
    <p><input type="text" size="50" name="FIRST_NAME" placeholder="Имя" minlength="2" maxlength="40"
               value="{{form.get('FIRST_NAME', '')}}" required>

        % if errors.get("first_name"):
            <div class="error">{{errors["first_name"]}}</div>
        % end
    </p>

    <p><input type="text" size="50" name="LAST_NAME" placeholder="Фамилия" minlength="2" maxlength="40"
               value="{{form.get('LAST_NAME', '')}}" required>

        % if errors.get("last_name"):
            <div class="error">{{errors["last_name"]}}</div>
        % end
    </p>

    <p><textarea rows="2" cols="50" name="ACTIVITY" placeholder="Деятельность" minlength="10" maxlength="200"
                  required>{{form.get('ACTIVITY', '')}}</textarea>

        % if errors.get("activity"):
            <div class="error">{{errors["activity"]}}</div>
        % end
    </p>

    <p><input type="text" size="50" name="PHONE" placeholder="Телефон" minlength="10" maxlength="18"
               value="{{form.get('PHONE', '')}}" required>

        % if errors.get("phone"):
            <div class="error">{{errors["phone"]}}</div>
        % end
    </p>

    <p class="photo-text">Фотография</p>
    <p><input type="file" name="PHOTO" accept="image/*" required>
        % if errors.get("photo"):
            <div class="error">{{errors["photo"]}}</div>
        % end
    </p>
    <p><input type="submit" value="Разместить"></p>
</form>
</div>
</div>