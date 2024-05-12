from ...mongo.connect import ConnectionMongo
from bson import json_util
import json

class MongoSpecialist:
    def __init__(self):
        self.connect = ConnectionMongo()

    def specialist_connect(self):
        db = self.connect.con
        col = db["specialties"]

        raw = col.find({})
    
        json_resultado = json.loads(json_util.dumps(raw))

        return json_resultado

