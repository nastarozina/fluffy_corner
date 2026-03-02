"""
Routes and views for the bottle application.
"""


from bottle import route, view, template, redirect
import json

# Главная страница (теперь ведет на home.tpl)
@route('/')
@view('home')
def index():
    """Renders the home page."""
    return dict(
        title = 'Главная'
    )

# Страница питомцев (теперь доступна по /pets)
@route('/pets')
@view('find_pet')
def home():
    with open(r"static\pets.json", "r", encoding="utf-8-sig") as pet_data:
            data = json.load(pet_data)
    return dict(
        title = 'Питомцы',
        pets=data

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