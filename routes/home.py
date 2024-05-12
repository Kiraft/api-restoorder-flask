from flask import Blueprint

home = Blueprint(name='home', import_name= __name__)

@home.route('/')
def get_home():
    return 'Estoy escuchando'