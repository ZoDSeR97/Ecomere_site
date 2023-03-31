import imp
from app.models import base

class Review(base.Base):
    db = "ecom_db"
    tbl_name = "review"
    def __init__(self, data: dict) -> None:
        super().__init__(data)
        self.rating = data['rating']
        self.content = ""
        if 'content' in data:
            self.content = data['content']
            