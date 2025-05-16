from flask import Flask              #? From the flask package and module, import the Flask class

app = Flask(__name__)                #? Create an instance of the Flask class, passing the name of the module as an argument


@app.route('/')                      #? Flask decorator that wraps a function below it
def profile():                       #? A wrapped function is a "view function"
    me = {                           #? Python dictionary
        'name': 'Isai',
        "last_name": 'Almeraz',
        "hobby": 'volleyball',
        "is_online": True,
    }
    
    return me                        #? Returning the dict from a view finction converts it to a JSON!