"""
Routes and views for the bottle application.
"""


from bottle import route, view, template, redirect, abort
import json

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