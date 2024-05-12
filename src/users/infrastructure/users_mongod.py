from ...mongo.connect import ConnectionMongo

class MongodUser:
    def __init__(self):
        self.connect = ConnectionMongo()

    def user_connect(self, user, pasw):
        db = self.connect.con
        col = db["usuarios"]

        doc = col.find_one({"usuario": user, "contrasena": pasw}, {'_id': False, 'empleado': False})
        return doc

