class EspecialistasResponse():

    @staticmethod
    def parsed_especialistas(raw):
        if raw is not None:
           
            return raw
        else:
            raise Exception("Usuario no válido")