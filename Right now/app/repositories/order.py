from app.models.order import Order, db

class OrderRepository:
    @staticmethod
    def save(order):
        try:
            db.session.add(order)
            db.session.commit()
            return True
        except Exception as e:
            db.session.rollback()
            print(f"Error saving order: {e}")
            return False

    @staticmethod
    def get_all():
        try:
            return Order.query.all()
        except Exception as e:
            print(f"Error retrieving orders: {e}")
            return []

from app.models.order import Order, db

class OrderRepository:
    @staticmethod
    def save(order):
        try:
            db.session.add(order)
            db.session.commit()
            return True
        except Exception as e:
            db.session.rollback()
            print(f"Error saving order: {e}")
            return False

    @staticmethod
    def get_all():
        try:
            return Order.query.all()
        except Exception as e:
            print(f"Error retrieving orders: {e}")
            return []
