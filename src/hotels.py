from flask import Blueprint, request, jsonify
from flasgger import swag_from
from flask_jwt_extended import jwt_required, get_jwt_identity
from src.functions import getUser
from src.database import mysqlconnect
from operator import itemgetter

hotels = Blueprint("hotels", __name__, url_prefix="/api/v1/hotel")

@hotels.get("/find")
@jwt_required()
@swag_from('./docs/hotel/hotel.yaml')
def get_all():
    user_email = get_jwt_identity()
    user = getUser(user_email)
    print(user)
    if(user != None):

        hoteldata=[]

        name = request.args.get('name')
        location = request.args.get('location')
        price = request.args.get('price')
        sortBy = request.args.getlist('sortBy')
        amenities = ",".join(request.args.getlist('amenities'))
        print(sortBy[0])

        connection = mysqlconnect()
        cursor = connection.cursor()

        sql= "SELECT * FROM best_hotels WHERE id <> 0 "
        

        if(name!=None):
            sql += "AND name LIKE" + f"'%{name}%'"

        if(location!=None):
            sql += "AND location LIKE" + f"'%{location}%'"
            
        if(price!=None):
            sql += "AND price >=" + f"'{price}'"
           
        if(amenities!=None):
            sql += "AND amenities LIKE" + f"'%{amenities}%'"

        print(sql)
        cursor.execute(sql)

        results = cursor.fetchall()

        for x in results:
            data = {
                "hotel_name": x[1],
                "imageUrl": x[2],
                "location": x[3],
                "neighborhoodName": x[4],
                "price": x[5],
                "star": x[6],
                "rating":x[7],
                "amenities": x[8]
                }
            hoteldata.append(data)
        
        if(len(sortBy) != 0):
            if(len(sortBy) > 1 or sortBy[0] == 'Low to High'):
                hoteldata.sort(key = itemgetter("price"))
            else:
                hoteldata.sort(key = itemgetter("price"), reverse = True)
        json = jsonify(hoteldata)
        return json
    return {"hotels": []}