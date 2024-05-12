from .especialidades_mongod import MongoSpecialist
from ..application.especialidades_response import SpecialtiesResponse

class SpecialtiesController:
    def __init__(self):
        self.mongo = MongoSpecialist()
        self.response = SpecialtiesResponse()

    def validar_specialties(self):
        raw = self.mongo.specialist_connect()
        parsed = self.response.parsed_specialties(raw)

        return parsed