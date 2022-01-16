from flask import jsonify
from src.database import mysqlconnect

connection = mysqlconnect()
cursor = connection.cursor()

def getUser(email):
    cursor.execute(" SELECT * FROM users WHERE email = %s ", (email))
    result = cursor.fetchall()
    if(len(result) != 0):
        return {
            "id" : result[0][0],
            "username" : result[0][1],
            "email" : result[0][2],
            "password" : result[0][3],
            "created_at" : result[0][4],
            "updated_at" : result[0][5]
        }
    else:
        return {}