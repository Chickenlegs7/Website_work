from flask import Flask, render_template, request, redirect, url_for, flash
from datetime import datetime
import os
import sys
import secrets

# Get the parent directory
parent_dir = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))

# Add the parent directory to sys.path
sys.path.append(parent_dir)

app = Flask(__name__)
app.secret_key = secrets.token_hex(32)

# Home route
@app.route('/')
def home():
    return render_template('home.html', year=datetime.now().year)

# Services route
@app.route('/services')
def services():
    return render_template('services.html', year=datetime.now().year)

@app.route('/contact')
def contact():
    return render_template('new_contact.html', year=datetime.now().year)

if __name__ == '__main__':
    app.run(debug=True)
