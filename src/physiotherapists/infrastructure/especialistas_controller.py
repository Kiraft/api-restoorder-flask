from .especialistas_mongod import MongodEspecialistas
from ..application.especialistas_response import EspecialistasResponse

class EspecialistasController:
    def __init__(self):
        self.mongo = MongodEspecialistas()
        self.response = EspecialistasResponse() 


    def validar_especialistas(self, id):
        raw = self.mongo.especialistas_connect(id)
        parsed = self.response.parsed_especialistas(raw)

        return parsed