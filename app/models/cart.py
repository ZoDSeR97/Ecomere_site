from app.models import base

class Cart(base.Base):
    db = "ecom_db"
    tbl_name = "cart"
    def __init__(self, data: dict) -> None:
        super().__init__(data)
        self.quantity = data['quantity']
    
    @classmethod
    def get_one(cls, data):
        query = "SELECT * FROM "+cls.tbl_name + " WHERE user_id=%(user_id)s AND product_id=%(product_id)s;"
        result = super().get_raw_result(query, data)
        if result:
            return result[0]
        return result
    
    @classmethod
    def clear(cls, data):
        query = "DELETE FROM " + cls.tbl_name +  " WHERE user_id=%(user_id)s;"
        return super().get_result(query, data)
