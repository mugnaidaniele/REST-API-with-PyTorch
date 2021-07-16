from flask import Flask, jsonify, request
from utils import get_prediction_idx, get_model
import json
app = Flask(__name__)
classes = json.load(open("imagenet_class_index.json"))


@app.route('/predict', methods=['POST'])
def predict():

    if request.method == 'POST':
        file = request.files['file']
        img_bytes = file.read()
        model = get_model()
        idx = get_prediction_idx(img_bytes, model)
        prediction = classes[idx][1]
    return jsonify({'category': prediction})


@app.route('/')
def foo():
    return "Ciao"
