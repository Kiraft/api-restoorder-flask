from pymongo import MongoClient
import os

class ConnectionMongo:

    def __init__(self):
        #_ NAME DB
        db = "resto-order"

        connection = MongoClient(os.getenv('MONGODB_URL'), uuidRepresentation='standard')
        self.con = connection[db]

