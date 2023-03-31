import bcrypt
from flask import Flask, jsonify
from flask_bcrypt import Bcrypt
import stripe

app = Flask(__name__)
app.config['STRIPE_PUBLIC_KEY'] = "pk_test_51MrCR6FLmaU0LZ7lHVOAaRUV5vTOyJlfwSPqGljfwCbi0mBUkjYPkhBO6FcvXq7DoJhWbT6HVmLf8ZMLfXit0c0J00mRPhpsgf"
stripe.api_key = "sk_test_51MrCR6FLmaU0LZ7leyJZocCMPegVxdXn2wJKFg39AXlmB7YRoBxPKjais6NYPgz4R0QMSDBBMW4Du3mP1Ho4LJqk00rSvFqZxr"
app.secret_key = "XLam!-2!G=&pk_$Y"
bcrypt = Bcrypt(app)

@app.route('/public_key')
def public_key():
    return jsonify({'key': app.config['STRIPE_PUBLIC_KEY']})
