from flask_sqlalchemy import SQLAlchemy
from datetime import datetime

db = SQLAlchemy()

class Order(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    client_id = db.Column(db.Integer, nullable=False)
    creation_date = db.Column(db.DateTime, default=datetime.utcnow)
    products = db.Column(db.String, nullable=False)
