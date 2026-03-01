"""
Routes and views for the bottle application.
"""

from bottle import route, view, redirect

@route('/')
@route('/pets')
@view('find_pet')
def home():
    """Renders the home page."""
    return dict(
        title = 'Питомцы'
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