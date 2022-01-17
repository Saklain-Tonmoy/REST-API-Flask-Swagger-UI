## Description
> It's Python based REST-API and used Swagger UI for testing the API endpoints.

## Project Link
> https://github.com/Saklain-Tonmoy/REST-API-Flask-Swagger-UI

## Languages
> - Python
> - MYSQL

## Framework
> -Flask

## Packages Used

> - Flask-JWT-Extended
> - Flasgger
> - Python-Dotenv
> - Python Virtual Environment

## Prerequisites

> - Install Python (recommended version 3.8)
> - Install XAMPP/WAMPP (recommended XAMPP)

## Project Setup
#### Step 1

> Please go to the folder where you want to install the application and open the Termial/CMD. Then type the following command and press enter

```
git clone https://github.com/Saklain-Tonmoy/REST-API-Flask-Swagger-UI
```

#### Step 2
> After cloning please open the folder using cmd or VSCode, and run the following commands to install and activate the Virtual Environment

First,
```
python3 -m venv my-env
```
Second,
```
source my-env/bin/activate
```

#### Step 3
> Install the required packages by running the following command
```
pip install -r requirements.txt
```

#### Step 4
> Create a database from XAMPP(localhost) named `flask_api` and provide the database information `(user,password,host,dbname)` in `.env` file.

```
CREATE DATABASE [IF NOT EXISTS] flask_api;
```

#### Step 5
> Import the `flask_api.sql` provided with the cloned folder into the database.

#### Step 6
> Finally, run the project using following command

```
flask run
```

## How to use
#### Step 1
> After running the project, please open your browser and go to the following url
```
http://127.0.0.1:5000/
```

#### Step 2
> Create an account by providing an email address and password from register route.

#### Step 3
> Then Login into the account by providing the email address and password from login route.

#### Step 4
> When you are logged in then you will be receive an access-token as a response. Use this token as an authorization header while searching for hotels like below:

```
Bearer access-token
```
> Note :: This access-token will expire after 10 minutes. Then you will have to login again and generate a new token.

#### Step 5
> After that, provide the informations by which you would like to search for hotels.



### Finally, thanks from Saklain Tonmoy :neutral_face:
