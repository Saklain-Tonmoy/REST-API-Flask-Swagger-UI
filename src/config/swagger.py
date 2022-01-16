template = {
    "swagger": "2.0",
    "info": {
        "title": "Best Hotels API",
        "description": "API for searching best hotels",
        "contact": {
            "responsibleOrganization": "",
            "responsibleDeveloper": "Saklain Tonmoy",
            "email": "saklain@w3engineers.com",
            "url": "www.linkedin.com/in/md-golam-saklain-hossain-9b6645107",
        },
        "termsOfService": "www.twitter.com/deve",
        "version": "1.0"
    },
    "basePath": "/api/v1",  # base bash for blueprint registration
    "schemes": [
        "http",
        "https"
    ],
    "securityDefinitions": {
        "Bearer": {
            "type": "apiKey",
            "name": "Bearer ",
            "in": "header",
            "description": "JWT Authorization header using the Bearer scheme. Example: \"Authorization: Bearer {token}\""
        },
    },
}

swagger_config = {
    "headers": [
    ],
    "specs": [
        {
            "endpoint": 'apispec',
            "route": '/apispec.json',
            "rule_filter": lambda rule: True,  # all in
            "model_filter": lambda tag: True,  # all in
        }
    ],
    "static_url_path": "/flasgger_static",
    "swagger_ui": True,
    "specs_route": "/"
}