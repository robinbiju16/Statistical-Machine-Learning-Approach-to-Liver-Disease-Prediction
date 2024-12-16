from flask import Flask, render_template, request, flash, redirect
import pickle
import numpy as np
from PIL import Image
from tensorflow.keras.models import load_model



app = Flask(__name__)

def predict(values, dic):
    if len(values) == 10:
        model = pickle.load(open('models/liver.pkl','rb'))
        values = np.asarray(values)
        return model.predict(values.reshape(1, -1))[0]

@app.route("/")
def home():
    return render_template('home.html')



@app.route("/liver", methods=['GET', 'POST'])
def liverPage():
    return render_template('liver.html')


@app.route("/predict", methods = ['POST', 'GET'])
def predictPage():
    p1=0
    p2=0
    try:
        if request.method == 'POST':
            to_predict_dict = request.form.to_dict()
            to_predict_list = list(map(float, list(to_predict_dict.values())))
            # pred = predict(to_predict_list, to_predict_dict)
            if(to_predict_list[2]<0.3):
                p1=p1+1
            else:
                p2=p2+1
            if(to_predict_list[1]>0.2 and to_predict_list[1]<1.2):
                p1=p1+1
            else:
                p2=p2+1
            if(to_predict_list[3]>20 and to_predict_list[3]<140):
               p1=p1+1
            else:
                p2=p2+1
            if(to_predict_list[4]>20 and to_predict_list[4]<60):
                p1=p1+1
            else:
                p2=p2+1
            if(to_predict_list[5]>10 and to_predict_list[5]<15):
                p2=p2+1
            else:
                p2=p2+1
            if(to_predict_list[6]>10 and to_predict_list[6]<15):
                p1=p1+1
            else:
                p2=p2+1
            if(to_predict_list[7]>4.0 and to_predict_list[7]<5.4):
                p1=p1+1
            else:
                p2=p2+1
            if(to_predict_list[6]>10 and to_predict_list[6]<15):
                p1=p1+1
            else:
                p2=p2+1
            if(p1>p2):
                pred=0
            else:
                pred=1
            print("##############################################3")
            print(pred)
    except:
        message = "Please enter valid Data"
        return render_template("home.html", message = message)

    return render_template('predict.html', pred = pred)

@app.route("/malariapredict", methods = ['POST', 'GET'])
def malariapredictPage():
    if request.method == 'POST':
        try:
            if 'image' in request.files:
                img = Image.open(request.files['image'])
                img = img.resize((36,36))
                img = np.asarray(img)
                img = img.reshape((1,36,36,3))
                img = img.astype(np.float64)
                model = load_model("models/malaria.h5")
                pred = np.argmax(model.predict(img)[0])
        except:
            message = "Please upload an Image"
            return render_template('malaria.html', message = message)
    return render_template('malaria_predict.html', pred = pred)

@app.route("/pneumoniapredict", methods = ['POST', 'GET'])
def pneumoniapredictPage():
    if request.method == 'POST':
        try:
            if 'image' in request.files:
                img = Image.open(request.files['image']).convert('L')
                img = img.resize((36,36))
                img = np.asarray(img)
                img = img.reshape((1,36,36,1))
                img = img / 255.0
                model = load_model("models/pneumonia.h5")
                pred = np.argmax(model.predict(img)[0])
        except:
            message = "Please upload an Image"
            return render_template('pneumonia.html', message = message)
    return render_template('pneumonia_predict.html', pred = pred)

if __name__ == '__main__':
	app.run(debug = True)