from app.models import base

class Product(base.Base):
    db="ecom_db"
    tbl_name="product"
    def __init__(self, data: dict) -> None:
        super().__init__(data)
        self.title = data['title']
        self.description = data['description']
        self.img = data['img']
        self.category = data['category']
        self.price = data['price']
        if 'quantity' in data:
            self.quantity = data['quantity']
        
    @classmethod
    def get_one_by_word(cls, data):
        query = "SELECT * FROM "+cls.tbl_name+" WHERE title LIKE %(title)s OR category LIKE %(title)s;"
        return super().get_result(query, data)
        
    @classmethod
    def get_tease(cls):
        query = """
            (SELECT * FROM product WHERE category='electronics' LIMIT 4)
            UNION 
            (SELECT * FROM product WHERE category='jewelery' LIMIT 4)
            UNION
            (SELECT * FROM product WHERE category="groceries" LIMIT 4)
            UNION
            (SELECT * FROM product WHERE category="women's clothing" LIMIT 4)
            UNION
            (SELECT * FROM product WHERE category="smartphones" LIMIT 4)
            UNION
            (SELECT * FROM product WHERE category="men's clothing" LIMIT 4);
        """
        return super().get_result(query)
