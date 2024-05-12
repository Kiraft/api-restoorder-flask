from .mesas_mongod import MesaMongod
from ..application.mesas_response import MesaResponse

class MesaController:
    def __init__(self):
        self.mongo = MesaMongod()
        self.response = MesaResponse() 


    def get_mesas_by_user(self, id_user):
        raw = self.mongo.mesas_connect(id_user)
        parsed = self.response.parsed_mesas(raw)

        return parsed