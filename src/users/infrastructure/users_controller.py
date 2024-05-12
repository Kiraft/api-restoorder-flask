from .users_mongod import MongodUser
from ..application.users_response import UserResponse

class UserController:
    def __init__(self):
        self.mongo = MongodUser()
        self.response = UserResponse() 


    def validar_usuario(self, user, pasw):
        raw = self.mongo.user_connect(user, pasw)
        parsed = self.response.parsed_user(raw)

        return parsed