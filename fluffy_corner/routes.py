"""
Routes and views for the bottle application.
"""

from bottle import route, view, template, redirect

@route('/')
@route('/pets')
@view('find_pet')
def home():
    """Renders the home page."""
    return dict(
        title = 'Питомцы'
    )