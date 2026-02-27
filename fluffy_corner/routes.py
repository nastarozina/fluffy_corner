"""
Routes and views for the bottle application.
"""

from bottle import route, view, template, redirect

@route('/')
def hello():
    """Renders a sample page."""
    redirect('/hello/world')

@route('/hello/<name>')
def example(name):
    """Renders a sample page with the name specified in the URL."""
    return template('<b>Hello {{name}}</b>!', name=name)