from flask import Flask, config, jsonify
import os
from src.auth import auth
from src.constants.http_status_codes import HTTP_404_NOT_FOUND, HTTP_500_INTERNAL_SERVER_ERROR
from src.hotels import hotels
from src.database import mysqlconnect
from flask_jwt_extended import JWTManager
from flasgger import Swagger, swag_from
from src.config.swagger import template, swagger_config
def create_app(test_config=None):
    app = Flask(__name__, instance_relative_config=True)

    if test_config is None:
        app.config.from_mapping(
            SECRET_KEY = os.environ.get("SECRET_KEY"),
            JWT_SECRET_KEY = os.environ.get("JWT_SECRET_KEY"),
            SWAGGER = {
                "title" : "Best Hotels Api",
                "uiversion" : 3
            }
        )
    else:
        app.config.from_mapping(test_config)


    JWTManager(app)

    # calling the method which connects mysql database to the application
    connection = mysqlconnect()
    cursor = connection.cursor()

    ## registering route blueprint
    app.register_blueprint(auth)
    app.register_blueprint(hotels)


    Swagger(app, config=swagger_config, template=template)

    # @app.get('/')
    # def home():
    #     sql = " SELECT * FROM best_hotels WHERE id = %(id)s "
    #     param = {'id' : 11}
    #     cursor.execute(sql, param)
    #     result = cursor.fetchall()
    #     return jsonify(result)

    @app.errorhandler(HTTP_404_NOT_FOUND)
    def handle_404(e):
        return jsonify({
            "error" : "Not found"
        }), HTTP_404_NOT_FOUND

    @app.errorhandler(HTTP_500_INTERNAL_SERVER_ERROR)
    def handle_500(e):
        return jsonify({
            "error" : "Internal Server Error"
        }), HTTP_500_INTERNAL_SERVER_ERROR

    return app
