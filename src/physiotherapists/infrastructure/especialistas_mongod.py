from ...mongo.connect import ConnectionMongo
from bson.objectid import ObjectId
from bson import json_util
import json


class MongodEspecialistas:
    def __init__(self):
        self.connect = ConnectionMongo()

    def especialistas_connect(self, id):
        db = self.connect.con
        coleccion = db["physiotherapists"]

        document = coleccion.find({"especialidad._id": ObjectId(id) }, )
        json_resultado = json.loads(json_util.dumps(document))
        return json_resultado
