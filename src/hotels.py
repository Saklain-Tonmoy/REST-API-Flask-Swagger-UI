from flask import Blueprint, request, jsonify
from flasgger import swag_from
from flask_jwt_extended import jwt_required, get_jwt_identity
from src.functions import getUser
from src.database import mysqlconnect

hotels = Blueprint("hotels", __name__, url_prefix="/api/v1/hotel")

@hotels.get("/find")
@jwt_required()
@swag_from('./docs/hotel/hotel.yaml')
def get_all():
    user_email = get_jwt_identity()
    user = getUser(user_email)
    print(user)
    if(user != None):
        # name = request.json['name']
        # location = request.json['location']
        # price = request.json['price']
        # amenities = request.json['amenities']
        # sortBy = request.json['sortBy']


        # name = request.args.get('name')
        # location = request.args.get('location')
        # price = request.args.get('price')
        # amenities = request.args.getlist('amenities')
        # sortBy = request.args.getlist('sortBy')
        

        # print(name)
        # print(location)
        # print(price)
        # print(amenities)
        # print(sortBy)

        hoteldata=[]

        name = request.args.get('name')
        location = request.args.get('location')
        rating = request.args.get('rating')
        price = request.args.get('price')
        sortBy = request.args.get('sortBy')
        amenities = request.args.get('Amenities')

        print(name)
        print(location)
        print(price)
        print(amenities)
        print(sortBy)

        connection = mysqlconnect()
        cursor = connection.cursor()

        sql= "SELECT * FROM best_hotels WHERE "
        

        if(name!=None):
            if(sql=='SELECT * FROM best_hotels WHERE '):
                sql=sql+"name LIKE"+f"'%{name}%'"
            else:
                sql = sql + "AND name LIKE" + f"'%{name}%'"

        if(location!=None):
            if (sql == 'SELECT * FROM best_hotels WHERE '):
                sql=sql+"location LIKE"+f"'%{location}%'"
            else:
                sql = sql + "AND location LIKE" + f"'%{location}%'"
        if(rating!=None):
            if (sql == 'SELECT * FROM best_hotels WHERE '):
                sql=sql+"score="+f"'{rating}'"
            else:
                sql = sql + "AND rating=" + f"'{rating}'"
        if(price!=None):
            if (sql == 'SELECT * FROM best_hotels WHERE '):
                sql=sql+"price >="+f"'{price}'"
            else:
                sql = sql + "AND price >=" + f"'{price}'"
        if(amenities!=None):
            if (sql == 'SELECT * FROM best_hotels WHERE '):
                sql=sql+"Amenities LIKE"+f"'%{amenities}%'"
            else:
                sql = sql + "AND Amenities LIKE" + f"'%{amenities}%'"
    

        query=sql
        print(query)
        cursor.execute(query)

        results = cursor.fetchall()
        print(results)
        for x in results:
            data = {
                "Hotel name": x[0],
                "location": x[1],
                "rating": x[2],
                "prices": x[3],
                "Amenities":x[4],
                "images": x[5]
                }
            hoteldata.append(data)
            print(hoteldata)
        hoteldata.sort(key=lambda x: x["prices"])    
        json = jsonify(hoteldata)
        return json
        # return { "message" : "User Verified" }
    return {"hotels": []}