"""
Routes and views for the bottle application.
"""

from bottle import route, view, template, redirect
import json

@route('/')
@route('/pets')
@view('find_pet')
def home():
    with open(r"static\pets.json", "r", encoding="utf-8-sig") as pet_data:
            data = json.load(pet_data)
    return dict(
        title = 'Питомцы',
        pets=data
    )