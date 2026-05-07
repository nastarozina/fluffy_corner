"""
Routes and views for the bottle application.
"""


from bottle import route, view, template, redirect, abort, request, post
import json
from datetime import date
import re
import os

with open(r"static\pets.json", "r", encoding="utf-8-sig") as pet_data:
    pets = json.load(pet_data)

@route('/')
@view('home')
def index():
    """Renders the home page."""
    return dict(
        title = 'Главная'
    )

@route('/pets')
@view('find_pet')
def home():
    return dict(
        title='Питомцы',
        pets=pets
    )
@route('/needs')
@view('needs')
def needs():
    return dict(title='Нужды приюта')

@route('/happy-stories')
@view('happy_stories')  
def happy_stories():
    """Renders the happy stories page."""
    return dict(
        title = 'Счастливые истории'
    )

@route('/stories')
def stories_redirect():
    """Redirect /stories to /happy-stories"""
    redirect('/happy-stories')

@route('/about')
@view('about_us')
def about():
    """Renders the about us page."""
    return dict(
        title = 'О нас'
    )

@route('/help')
@view('donate')
def needs():
    return dict(title='Помощь')

@route('/pets/<pet_id:int>')
@view('pet')
def pet_page(pet_id):
    pet = next((p for p in pets if p['id'] == pet_id), None)

    if not pet:
        abort(404, "Питомец не найден")

    return dict(
        pet=pet,
        title=pet['name']
    )
@route('/activeUsers')
@view('active_users')
def about():
    """Отображение страницы активных пользователей."""

    # Загружаем список пользователей из JSON
    with open(r"static\active_users.json", "r", encoding="utf-8") as users_data:
        active_users = json.load(users_data)

    # Получаем тип сортировки из URL
    sort_type = request.query.get("sort")

    # Сортировка по фамилии
    if sort_type == "lastname_asc":
        active_users = sorted(
            active_users,
            key=lambda user: user["last_name"]
        )

    elif sort_type == "lastname_desc":
        active_users = sorted(
            active_users,
            key=lambda user: user["last_name"],
            reverse=True
        )

    # Передача данных в шаблон
    return dict(
        title='Помощники приюта',
        active_users=active_users,
        sort_type=sort_type,
        errors={},
        form={}
    )

@post('/activeUsers/add')
def my_form():
    errors = {}

    # Папка, куда загружать изображения
    UPLOAD_DIR = r"static\images\active_users"

    ALLOWED_EXTENSIONS = {
        '.tif', '.jfif', '.pjp', '.apng', '.xbm', '.jxl',
        '.jpe', '.jpeg', '.heif', '.ico', '.tiff', '.webp',
        '.svgz', '.jpg', '.heic', '.gif', '.svg', '.png',
        '.bmp', '.pjpeg', '.avif'
    }

    # Загружаем существующих пользователей
    with open(r"static\active_users.json", "r", encoding="utf-8-sig") as users_data:
        active_users = json.load(users_data)

    # Генерация следующего id
    next_id = max((user["id"] for user in active_users), default=0) + 1

    # Регулярные выражения для проверки данных
    pattern_name = r"^[А-Яа-яЁё]{2,40}$"
    pattern_activity = r'^[^A-Za-z]*[А-Яа-яЁё][^A-Za-z]*$'
    pattern_phone = r"^\+\d{9,17}$"

    # Получение данных формы
    first_name = request.forms.getunicode('FIRST_NAME').strip().capitalize()
    last_name = request.forms.getunicode('LAST_NAME').strip().capitalize()
    activity = request.forms.getunicode('ACTIVITY').strip()
    phone = request.forms.getunicode('PHONE').strip()
    upload = request.files.get('PHOTO')

    # Удаляем лишние пробелы из описания деятельности
    activity = " ".join(activity.split())

    # Проверка имени
    if not re.match(pattern_name, first_name):
        errors["first_name"] = "Некорректное имя"

    # Проверка фамилии
    if not re.match(pattern_name, last_name):
        errors["last_name"] = "Некорректная фамилия"

    # Проверка описания деятельности
    if len(activity) < 10 or len(activity) > 200 or not re.match(pattern_activity, activity):
        errors["activity"] = "Некорректный формат деятельности"

    # Проверка телефона
    if not re.match(pattern_phone, phone):
        errors["phone"] = "Некорректный телефон"

    # Проверка загрузки файла
    if not upload:
        errors["photo"] = "Нет файла"

    # Проверка уникальности телефона
    if any(u["phone"] == phone for u in active_users):
        errors["phone"] = "Человек с таким номером уже добавлен"

    # Если есть ошибки — возвращаем форму обратно
    if errors:
        return template(
            "active_users",
            title="Помощники приюта",
            active_users=active_users,
            sort_type=None,
            errors=errors,
            form=request.forms
        )

    # Делаем первую букву описания заглавной
    activity = activity[0].upper() + activity[1:]

    # Формирование имени файла
    extension = os.path.splitext(upload.filename)[1].lower()
    filename = f"{next_id}{extension}"
    filepath = os.path.join(UPLOAD_DIR, filename)

    # Проверка расширения файла
    if extension not in ALLOWED_EXTENSIONS:
        errors["photo"] = "Недопустимый формат (не изображение)"
        return template("active_users",
            title="Помощники приюта",
            active_users=active_users,
            sort_type=None,
            errors=errors,
            form=request.forms
        )
    else:
        # Создание папки (если не существует) и сохранение изображения
        os.makedirs(UPLOAD_DIR, exist_ok=True)
        upload.save(filepath)

    # Создание новой записи пользователя
    new_entry = {
        "id": next_id,
        "photo": f"/static/images/active_users/{filename}",
        "first_name": first_name,
        "last_name": last_name,
        "phone": phone,
        "description": activity,
        "date": date.today().strftime("%Y-%m-%d")
    }

    # Добавляем нового пользователя в список
    active_users.append(new_entry)

    # Сохраняем обновлённые данные в JSON-файл
    with open(r'static\active_users.json', 'w', encoding="utf-8") as users_data:
        json.dump(active_users, users_data, indent=4, ensure_ascii=False)

    # Переход на страницу (перезагрузка)
    return redirect("/activeUsers")