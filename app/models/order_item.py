import imp
from app.models import base

class Item(base.Base):
    db = "ecom_db"
    tbl_name = "order_item"
    def __init__(self, data: dict) -> None:
        super().__init__(data)
        self.quantity = data['quantity']