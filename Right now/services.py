from flask_mail import Message, Mail
from app import app, db
from models import Pedido, PedidoDTO
from datetime import datetime

# Configuración de correo
mail = Mail(app)

class PedidoService:
    def __init__(self):
        pass

    # Crear un nuevo pedido
    def crear_pedido(self, pedido_dto: PedidoDTO):
        nuevo_pedido = Pedido(cliente_id=pedido_dto.cliente_id, productos=pedido_dto.productos)
        db.session.add(nuevo_pedido)
        db.session.commit()
        return nuevo_pedido

    # Enviar correo de confirmación
    def enviar_correo(self, destinatario, asunto, cuerpo):
        msg = Message(asunto,
                      recipients=[destinatario],
                      body=cuerpo,
                      sender="mecedo3948@pariag.com")
        try:
            mail.send(msg)
        except Exception as e:
            print(f"Error al enviar correo: {e}")

