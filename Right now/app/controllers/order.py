from flask import Blueprint, request, render_template
from app.services.order import OrderService
from app.services.notification import NotificationService
from app.schemas.order_dto import OrderDTO
import os
from dotenv import load_dotenv

# Load environment variables from the .env file
load_dotenv()

order_bp = Blueprint("order", __name__, url_prefix="/")

order_service = OrderService()
notification_service = NotificationService()

@order_bp.route("/", methods=["GET", "POST"])
def manage_orders():
    if request.method == "POST":
        try:
            recipient = os.getenv("RECIPIENT_EMAIL")
            client_id = request.form.get("client_id")
            products = request.form.get("products").split(",")  # Split comma-separated products into a list

            order_dto = OrderDTO(client_id=client_id, products=products)
            created = order_service.create_order(order_dto)

            if created:
                notification_service.send_email(
                    recipient,
                    "Order Confirmation",
                    "Your order has been successfully created."
                )
                message = "Order successfully created."
            else:
                message = "Error creating the order."
        except Exception as e:
            message = f"Error: {str(e)}"
    else:
        message = None

    # Fetch all orders to display in the table
    orders = order_service.get_all_orders()
    return render_template("order_form.html", orders=orders, message=message)
