from flask_sqlalchemy import SQLAlchemy
from datetime import datetime

db = SQLAlchemy()

# Modelo Pedido
class Pedido(db.Model):
    __tablename__ = 'pedidos'
    id = db.Column(db.Integer, primary_key=True)
    cliente_id = db.Column(db.Integer, nullable=False)
    fecha_creacion = db.Column(db.DateTime, default=datetime.utcnow)
    productos = db.Column(db.PickleType, nullable=False)  # Usamos PickleType para listas
    
    def __init__(self, cliente_id, productos):
        self.cliente_id = cliente_id
        self.productos = productos


# DTO para la transferencia de datos (similar al que tenías)
class PedidoDTO:
    def __init__(self, cliente_id, productos):
        self.cliente_id = cliente_id
        self.productos = productos
