from app import bcrypt
from app.models import base, product
from flask import flash
import re

class User(base.Base):
    db = "ecom_db"
    tbl_name = "user"
    def __init__(self, data: dict) -> None:
        super().__init__(data)
        self.first_name = data['first_name']
        self.last_name = data['last_name']
        self.username = data['username']
        self.email = data['email']
        self.password = data['password']
        self.balance = data['balance']
    
    @classmethod
    def get_cart(cls, data):
        query = """
            SELECT product.*, cart.* FROM user
            JOIN cart ON user.id=user_id
            JOIN product ON product_id = product.id
            WHERE user.id=%(user_id)s
        """
        results = super().get_raw_result(query, data)
        products = []
        for item in results:
            p = product.Product(item)
            p.quantity = item['quantity']
            products.append(p)
        return products
    
    @classmethod
    def save(cls, data):
        pw_hash = bcrypt.generate_password_hash(data['password'])
        # put the pw_hash into the data dictionary
        data = {
            'first_name': data['first_name'],
            'last_name': data['last_name'],
            'username':data['username'],
            'email': data['email'],
            'password': pw_hash,
        }
        return super().save(data)
    
    @staticmethod
    def login_validation(form):
        errors = {}
        EMAIL_REGEX = re.compile(r'^[a-zA-Z0-9.+_-]+@[a-zA-Z0-9._-]+\.[a-zA-Z]+$')
        # test whether a field matches the pattern
        if not EMAIL_REGEX.match(form['email']):
            errors["log"] = "Invalid email or password"
        else:
            profile = User.get_one(form, condition='email')
            if not profile:
                errors["log"] = "Invalid email or password"
            elif not bool(re.search(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$', form["password"])):
                errors["log"] = "Invalid email or password"
            elif not bcrypt.check_password_hash(profile[0].password, form['password']):
                errors["log"] = "Invalid email or password"

        for category, message in errors.items():  # iterate over the keys and values of the dictionary
            # flash all of our errors at once, while also assigning them category filters
            flash(message, category)
        # will return true if no errors else will return false
        return not bool(errors)
    
    @staticmethod
    def registration_validation(form):
        errors = {"reg":[]}
        EMAIL_REGEX = re.compile(r'^[a-zA-Z0-9.+_-]+@[a-zA-Z0-9._-]+\.[a-zA-Z]+$')
        
        if 'agree' not in form:
            errors["reg"].append("Has to agree with ToS!")
        
        if len(form["first_name"]) < 2:
            # add our error message as a key value pair in our errors dictionary
            errors["reg"].append("First Name should be at least 2 characters")

        if len(form["last_name"]) < 2:
            errors["reg"].append("Last Name should be at least 2 characters")
            
        if len(form["username"]) < 3:
            errors["reg"].append("Username should be at least 3 characters")
            
        # test whether a field matches the pattern
        if len(form["email"]) < 5:
            errors["reg"].append("Email should be at least 5 characters")
            
        elif not EMAIL_REGEX.match(form['email']):
            errors["reg"].append("Invalid email address!")
            
        # test whether email is unique
        elif User.get_one(form, condition='email'):
            errors["reg"].append("Email address already in use!")

        if not bool(re.search(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$', form["password"])):
            errors["reg"].append(
                "Password must be at least 8 characters and contain at least 1 uppercase, 1 lowercase and 1 number!")
        elif form["password"] != form['confirm_password']:
            errors["reg"].append("Password mismatch confirmation")

        for category, messages in errors.items():  # iterate over the keys and values of the dictionary
            for message in messages:
                # flash all of our errors at once, while also assigning them category filters
                flash(message, category)
        # will return true if no errors else will return false
        return not bool(errors["reg"])
