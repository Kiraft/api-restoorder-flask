class SpecialtiesResponse():

    @staticmethod
    def parsed_specialties(raw):
        if raw is not None:
           
            return raw
        else:
            raise Exception("No hay especialidades")