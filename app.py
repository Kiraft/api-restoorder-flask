from flask import Flask
from routes.auth import auth
from routes.home import home
from routes.mesas import mesas


app = Flask(__name__)

app.register_blueprint(auth)
app.register_blueprint(home)
app.register_blueprint(mesas)



