from flask import Flask
import json

app = Flask(__name__)


@app.route("/", methods=["GET"])
@app.route("/index", methods=["GET", "POST"])
def index():
    """ Return JSON object """
    data = {"id": 1, "name": "james", "dob": "1950-10-27"}
    return data
