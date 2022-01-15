from flask import Blueprint

hotels = Blueprint("hotels", __name__, url_prefix="/api/v1/hotels")

@hotels.get("/hotels")
def get_all():
    return {"hotels": []}