from flask import Flask
from routes.auth import auth
from routes.home import home
from routes.specialties import specialties
from routes.physiotherapists import especialistas

app = Flask(__name__)

app.register_blueprint(auth)
app.register_blueprint(home)
app.register_blueprint(specialties)
app.register_blueprint(especialistas)


