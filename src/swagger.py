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
        "termsOfService": "",
        "version": "1.0"
    },
    "basePath": "/api/v1",
    "schemes": [
        "http",
        "https"
    ],
}

swagger_config = {
    "headers": [
    ],
    "specs": [
        {
            "endpoint": 'apispec',
            "route": '/apispec.json',
            "rule_filter": lambda rule: True,
            "model_filter": lambda tag: True,
        }
    ],
    "static_url_path": "/flasgger_static",
    "swagger_ui": True,
    "specs_route": "/"
}