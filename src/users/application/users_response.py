class UserResponse():

    @staticmethod
    def parsed_user(raw):
        if raw is not None:
           
            return raw
        else:
            raise Exception("Usuario no válido")