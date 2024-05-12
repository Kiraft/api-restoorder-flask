from ...mongo.connect import ConnectionMongo
from bson import json_util, ObjectId
import json

class MongodUser:
    def __init__(self):
        self.connect = ConnectionMongo()

    def user_connect(self, user, pasw):
        db = self.connect.con

        pipeline = [
            {"$match": {"usuario": user, "contrasena": pasw}},
            {"$lookup": {
                "from": "empleados",
                "localField": "empleado.id",
                "foreignField": "_id",
                "as": "empleado"
            }},
            {"$unwind": "$empleado"},
            {"$lookup": {
                "from": "tipos_empleados",
                "localField": "empleado.tipo_empleado.id",
                "foreignField": "_id",
                "as": "tipo_empleado"
            }},
            {"$unwind": "$tipo_empleado"},
            {"$project": {
                "_id": 0,
                "contrasena": 1,
                "usuario": 1,
                "tipo_empleado": "$tipo_empleado.tipo"
            }}
        ]

        resultado = db["usuarios"].aggregate(pipeline)
        json_resultado = json.loads(json_util.dumps(resultado))
        
        if len(json_resultado) == 0:
            json_resultado = None

        return json_resultado

