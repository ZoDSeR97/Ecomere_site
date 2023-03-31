from app import app
from app.models import product, user, cart, address
from flask import render_template, redirect, request, session
from collections import Counter

@app.route('/')
def homepage():
    if 'user_id' not in session and 'products' not in session:
        session['products'] = [] # cookies cart
    return render_template('index.html', items=product.Product.get_tease())

@app.route('/info')
def info():
    if 'user_id' not in session:
        return redirect('/signIn')
    return render_template('profile.html', user=user.User.get_one({'id':session['user_id']})[0], addresses=address.Address.get_one({'user_id':session['user_id']}, condition='user_id'))

@app.route('/signIn')
def signIn():
    return render_template('login.html')

@app.route('/ToS')
def ToS():
    return render_template('ToS.html')

@app.post('/login')
def login():
    if not user.User.login_validation(request.form):
        return redirect(request.referrer)
    account = user.User.get_one(request.form, condition='email')[0]
    session['user_id'] = account.id
    session['username'] = account.username
    if session['products']:
        for id, quantity in Counter(session['products']).items():
            data = {
                'user_id': session['user_id'],
                'product_id': id
            }
            item = cart.Cart.get_one(data)
            if item:
                item['quantity'] += quantity
                cart.Cart.update(item)
            else:
                cart.Cart.save(data)
    return redirect('/')

@app.route('/signUp')
def signUp():
    return render_template('registration.html')

@app.post('/register')
def registration():
    if not user.User.registration_validation(request.form):
        return redirect(request.referrer)
    session['user_id'] = user.User.save(request.form)
    session['username'] = request.form['username']
    return redirect('/')

@app.route('/logout')
def logout():
    session.clear()
    return redirect('/')

@app.route('/new_address')
def newAddress():
    if 'user_id' not in session:
        return redirect('/signIn')
    return render_template('address.html')

@app.post('/newAddress')
def create_address():
    if address.Address.validate(request.form):
        data = {
            **request.form,
            'user_id':session['user_id']
        }
        address.Address.save(data)
        return redirect('/info')
    return redirect(request.referrer)
