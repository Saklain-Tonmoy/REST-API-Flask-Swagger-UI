from flask import Blueprint, jsonify, request
from werkzeug.security import check_password_hash, generate_password_hash
from src.http_status_codes import HTTP_200_OK, HTTP_400_BAD_REQUEST, HTTP_401_UNAUTHORIZED, HTTP_409_CONFLICT
from src.database import mysqlconnect
from datetime import datetime
from flask_jwt_extended import jwt_required, create_access_token, get_jwt_identity
from src.functions import getUser
from flasgger import swag_from
from datetime import timedelta

connection = mysqlconnect()

auth = Blueprint("auth", __name__, url_prefix="/api/v1/auth")

@auth.post('/register')
@swag_from('./docs/auth/register.yaml')
def register():

    ### When the requested data is in JSON format, then we will have to extract it like below
    ### For registering user, I have used JSON format
    username = request.json['username']
    email = request.json['email']
    password = request.json['password']
    
    cursor = connection.cursor()

    cursor.execute(" SELECT * FROM users WHERE email = %s ", (email))
    result = cursor.fetchall()

    if len(password) < 4:
        return jsonify({ "error": "Password must contain at least 4 characters."}), HTTP_400_BAD_REQUEST
    
    if len(username) < 3:
        return jsonify({"error" : "Username is too short"}), HTTP_400_BAD_REQUEST
    
    if not username.isalnum() or " " in username:
        return jsonify({"error" : "Username should be alphanumeric and must not contain spaces."}), HTTP_400_BAD_REQUEST
    
    if len(result) != 0:
        return jsonify({ "error" : "Email already exists."}), HTTP_409_CONFLICT

    
    if len(result) == 0:
        pwd_hash = generate_password_hash(password)
        cursor.execute("INSERT INTO users (username, email, password, created_at, updated_at) VALUES (%s, %s, %s, %s, %s)" , (username, email, pwd_hash, datetime.now(), datetime.now()))
        connection.commit()
        if(cursor.rowcount != 0):
            return jsonify({
                "success" : "successfully created user",
                "username" : username,
                "email" : email,
                "password" : password
            })
    else:
        return jsonify({
            "error" : "User already exitst"
        })   
    

@auth.post('/login')
@swag_from('./docs/auth/login.yaml')
def login():

    email = request.args.get('email')
    password = request.args.get('password')

    print(email)
    print(password)
    user = getUser(email)

    if(user != None):
        is_pass_correct = check_password_hash(user.get('password'), password)
        if is_pass_correct:
            token = create_access_token(identity=user.get('email'), expires_delta=timedelta(minutes=10))
            return jsonify({
                'user' : {
                    'token' : token,
                    "username" : user.get('username'),
                    "email" : user.get('email')
                }
            }), HTTP_200_OK
    
    return jsonify({
        "error" : "wrong credentials"
    }), HTTP_401_UNAUTHORIZED


@auth.get("/me")
@jwt_required()
def me():
    user_email = get_jwt_identity()
    user = getUser(user_email)
    return jsonify({
        "user" : user
    }), HTTP_200_OK