from ...mongo.connect import ConnectionMongo
from bson import json_util, ObjectId
import json

class MesaMongod:
    def __init__(self):
        self.connect = ConnectionMongo()

    def mesas_connect(self, id_usuario):
        db = self.connect.con

        resultado = db["mesas"].find({"usuario": ObjectId(id_usuario)})
        json_resultado = json.loads(json_util.dumps(resultado))
        
        if len(json_resultado) == 0:
            json_resultado = None

        return json_resultado