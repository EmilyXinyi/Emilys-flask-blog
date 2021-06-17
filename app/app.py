import os
from flask import Flask, render_template, send_from_directory
from dotenv import load_dotenv

load_dotenv()
app = Flask(__name__)


@app.route('/')
def em():
    return render_template('emily.html', title="Emily Chen", url=os.getenv("URL"))