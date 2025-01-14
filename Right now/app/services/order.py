from app.models.order import Order
from app.repositories.order import OrderRepository

class OrderService:
    def __init__(self):
        self.repository = OrderRepository()

    def create_order(self, order_dto):
        order = Order(
            client_id=order_dto.client_id,
            products=",".join(order_dto.products)
        )
        return self.repository.save(order)

    def get_all_orders(self):
        return self.repository.get_all()
