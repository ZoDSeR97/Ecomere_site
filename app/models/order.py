from flask import flash
from app.models import base, product, address

class Order(base.Base):
    db = "ecom_db"
    tbl_name = "orders"
    def __init__(self, data: dict) -> None:
        super().__init__(data)
        self.status = data['status']
        self.delivery_time = ""
        if 'delivery_time' in data:
            self.delivery_time = data['delivery_time']
            
    @classmethod
    def get_all_order(cls, data):
        query = """
            SELECT orders.*, 
            json_arrayagg(
                json_object(
                    "id", product.id,
                    "title", product.title,
                    "description", product.description,
                    "category", product.category,
                    "img", product.img,
                    "price", product.price,
                    "quantity", order_item.quantity,
                    "created_at", product.created_at,
                    "updated_at", product.updated_at
                )
            ) as products
            FROM orders
            JOIN order_item ON order_id = orders.id
            JOIN product ON product_id = product.id
            WHERE user_id=%(user_id)s
            GROUP BY orders.id
            ORDER BY created_at;
        """
        results = super().get_raw_result(query,data)
        orders = []
        for result in results:
            order = cls(result)
            d = eval(result['products'])
            order.products = [product.Product(p) for p in d]
            orders.append(order)
        return orders
    
    @classmethod
    def get_all_item(cls, data):
        query="""
            SELECT * FROM orders
            JOIN order_item ON order_id = orders.id
            JOIN product ON product_id = product.id 
            JOIN address ON address.id = address_id
            WHERE orders.id = %(order_id)s
            ORDER BY orders.created_at;
        """
        results = super().get_raw_result(query,data)
        order = cls(results[0])
        order.products = []
        delivery_address = {
            'id': results[0]['address.id'],
            "street": results[0]['street'],
            "apt": results[0]['apt'] if 'apt' in results[0] else "",
            "city": results[0]['city'],
            "state": results[0]['state'],
            "zip_code": results[0]['zip_code'],
            'created_at': results[0]['address.created_at'],
            'updated_at': results[0]['address.updated_at'],
        }
        order.address = address.Address(delivery_address)
        for result in results:
            product_data = {
                'id': result['product.id'],
                'title': result['title'],
                'description': result['description'],
                'img': result['img'],
                'category': result['category'],
                'price': result['price'],
                'created_at': result['product.created_at'],
                'updated_at': result['product.updated_at'],
            }
            delivery_address={
                'id': result['address.id'],
                "street": result['street'],
                "apt": result['apt'] if 'apt' in result else "",
                "city": result['city'],
                "state": result['state'],
                "zip_code": result['zip_code'],
                'created_at': result['address.created_at'],
                'updated_at': result['address.updated_at'],
            }
            p = product.Product(product_data)
            p.quantity = result['quantity']
            order.products.append(p)
        return order
            
    @staticmethod
    def validation(form):
        error = {}
        if not form.getlist("product_id") or not form.getlist("quantity"):
            error['form'] = 'Invalid Form!'
        
        if 'address' not in form:
            error['address'] = 'Need an address!'
            
        for category, message in error.items():
            flash(message,category)
        return not bool(error)
