from flask import Blueprint
from flasgger import swag_from
from flask_jwt_extended import jwt_required

hotels = Blueprint("hotels", __name__, url_prefix="/api/v1/find")

@hotels.get("/hotels")
@jwt_required()
@swag_from('./docs/hotel/hotel.yaml')
def get_all():
    return {"hotels": []}