from email import message
from app.models import base
from flask import flash

class Address(base.Base):
    db = "ecom_db"
    tbl_name = "address"
    def __init__(self, data: dict) -> None:
        super().__init__(data)
        self.street = data['street']
        self.apt = ""
        if 'apt' in data:
            self.apt = data['apt']
        self.city = data['city']
        self.state = data['state']
        self.zip_code = data['zip_code']
        
    @staticmethod
    def validate(form):
        error = {}
        if len(form['street']) < 10:
            error['street'] = "street address cannot be less than 10 character"
            
        if len(form['city']) < 4:
            error['city'] = "City cannot be less than 4 characters"
        
        if len(form['state']) < 2:
            error['state'] = "State cannot be less than 2 characters"
        
        if len(form['phone_number']) != 10:
            error['phone_number'] = "Invalid Phone Number"
            
        if len(form['zip_code']) != 5:
            error['zip_code'] = "Zip code invalid"
            
        for category, message in error.items():
            flash(message,category)
        
        return not bool(error)
