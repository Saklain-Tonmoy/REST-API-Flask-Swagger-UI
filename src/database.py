import os
import pymysql

def mysqlconnect():
    connection = pymysql.connect(
        host = os.environ.get("MYSQL_HOST"),
        user = os.environ.get("MYSQL_USER"),
        password = os.environ.get("MYSQL_PASSWORD"),
        db = os.environ.get("MYSQL_DATABASE")
    )

    # cursor = connection.cursor()

    return connection
