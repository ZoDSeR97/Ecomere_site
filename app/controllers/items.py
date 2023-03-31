from importlib import metadata
from flask import jsonify, redirect, render_template, request, session, flash
from app import app, stripe
from app.models import product, cart, user, address, order, order_item
from collections import Counter
import time, random, datetime, math, json

def random_date():
    d = random.randint(int(time.time()), int(time.time())+1000000)
    return datetime.datetime.fromtimestamp(d).strftime('%Y-%m-%d')

@app.route("/item/<int:id>")
def product_page(id):
    return render_template('product.html', item=product.Product.get_one({'id': id})[0])

@app.route('/cart')
def show_cart():
    if 'user_id' not in session:
        products = []
        print(session['products'])
        for id, quantity in Counter(session['products']).items():
            p = product.Product.get_one({'id': id})[0]
            p.quantity = quantity
            products.append(p)
        return render_template('cart.html', cart=products, len=len(products), addresses = [])
    else:
        user_cart = user.User.get_cart({'user_id': session['user_id']})
        return render_template('cart.html', cart=user_cart, len=len(user_cart), addresses=address.Address.get_one({'user_id': session['user_id']}, condition='user_id'))
    
@app.route("/cart/item/<int:id>")
def to_cart(id):
    if 'user_id' not in session:
        session['products'] = [*session['products'],id]
    else:
        data = {
            'user_id': session['user_id'], 
            'product_id': id
        }
        item = cart.Cart.get_one(data)
        print(item)
        if item:
            item['quantity']+=1
            cart.Cart.update(item)
        else:
            cart.Cart.save(data)
    return redirect(request.referrer)

@app.route('/orders')
def all_orders():
    if 'user_id' not in session:
        return redirect('/signIn')
    return render_template('orders.html', orders=order.Order.get_all_order({'user_id': session['user_id']}))

@app.route('/orders/<int:id>')
def single_order(id):
    if 'user_id' not in session:
        return redirect('/signIn')
    return render_template('order.html', orders=order.Order.get_all_item({'order_id': id}))

@app.route('/checkout')
def checkout():
    return render_template('checkout.html')

@app.route('/process-payment')
def process_payment():
    payment_intent = stripe.PaymentIntent.retrieve(request.args.get("payment_intent"))
    account = user.User.get_one({'id': payment_intent.metadata['user_id']})[0]
    session['user_id'] = account.id
    session['username'] = account.username
    data = {
        'status': 'order placed',
        'address_id': payment_intent.metadata['address_id'],
        'user_id': account.id,
        'delivery_time': random_date()
    }

    # Create order
    order_id = order.Order.save(data)

    # Create order item base on order id
    print(payment_intent.metadata)
    quantites = json.loads(payment_intent.metadata['quantities'])
    product_ids = json.loads(payment_intent.metadata['product_ids'])
    for index, id in enumerate(product_ids['ids']):
        data = {
            'product_id': id,
            'order_id': order_id,
            'quantity': quantites['quantities'][index]
        }
        order_item.Item.save(data)
    flash(payment_intent.status)
    return redirect('/orders')

@app.post('/create-payment-intent')
def create_payment_intent():
    total_cost = 5
    for index, id in enumerate(session['product_ids']):
        p = product.Product.get_one({'id':id})[0]
        total_cost+=p.price*int(session['quantities'][index])
    total_cost = math.floor(total_cost*100)
    payment_intent = stripe.PaymentIntent.create(
        amount=total_cost,
        currency="usd",
        automatic_payment_methods={"enabled": True},
        metadata = {
            "user_id": str(session['user_id']), 
            "username": session['username'],
            "product_ids": json.dumps({"ids": session['product_ids']}),
            "quantities": json.dumps({"quantities": session['quantities']}),
            "address_id": session['address_id'],
        }
    )
    print(payment_intent)
    return jsonify(clientSecret=payment_intent.client_secret)

@app.post('/process_orders')
def process():
    if 'user_id' not in session:
        return redirect('/signIn')
    if not order.Order.validation(request.form):
        return redirect(request.referrer)
    session['product_ids'] = request.form.getlist("product_id")
    session['quantities'] = request.form.getlist("quantity")
    session['address_id'] = request.form['address']
    if not session['product_ids'] or not session['quantities']:
        return redirect(request.referrer)
    
    return redirect('/checkout')

@app.route('/results')
def search_result():
    return render_template('result.html', products=product.Product.get_one_by_word(session['search']))

@app.post('/search')
def search():
    session['search'] = {
        "title": f"%{request.form['title']}%"
    }
    return redirect('/results')

@app.route('/remove/<int:id>')
def removeItem(id):
    if 'user_id' not in session:
        session['products'] = [i for i in session['products'] if i != id]
    else:
        cart.Cart.remove({'id':id})
    return redirect('/cart')