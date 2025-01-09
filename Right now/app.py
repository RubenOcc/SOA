from flask import Flask, request, jsonify
from flask_sqlalchemy import SQLAlchemy
from services import PedidoService
from models import db, PedidoDTO

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///pedidos.db'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
app.config['MAIL_USERNAME'] = 'tucorreo@gmail.com'
app.config['MAIL_PASSWORD'] = 'tucontraseña'
app.config['MAIL_SERVER'] = 'smtp.gmail.com'
app.config['MAIL_PORT'] = 587
app.config['MAIL_USE_TLS'] = True

db.init_app(app)

# Ruta para crear pedido
@app.route('/pedido', methods=['POST'])
def crear_pedido():
    try:
        # Recibir datos del formulario
        cliente_id = int(request.form['cliente_id'])
        productos = request.form.getlist('productos')
        
        # Crear DTO y pasar a la capa de negocio
        pedido_dto = PedidoDTO(cliente_id, productos)
        pedido_service = PedidoService()

        # Crear pedido en la base de datos
        nuevo_pedido = pedido_service.crear_pedido(pedido_dto)

        # Enviar correo de confirmación
        pedido_service.enviar_correo('cliente@example.com', 'Confirmación de Pedido', 
                                    f"Su pedido ha sido creado exitosamente: {productos}")

        return jsonify({"mensaje": "Pedido creado exitosamente", "id_pedido": nuevo_pedido.id}), 200
    except Exception as e:
        return jsonify({"error": str(e)}), 400


# Crear la base de datos si no existe
@app.before_first_request
def crear_base_datos():
    db.create_all()

if __name__ == '__main__':
    app.run(debug=True)
