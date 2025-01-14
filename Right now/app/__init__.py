from flask import Flask

def create_app():
    app = Flask(__name__)
    app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///orders.db'
    app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

    from app.controllers.order import order_bp
    app.register_blueprint(order_bp)

    return app

from flask import Flask

def create_app():
    app = Flask(__name__)
    app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///orders.db'
    app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

    from app.controllers.order import order_bp
    app.register_blueprint(order_bp)

    return app
