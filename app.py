from flask import Flask
import os
import socket


app = Flask(__name__)

@app.route("/")
def hello():

    # get the message from the environmental variable $MESSAGE
    html = "<h3>Hello {name}!</h3>"
    return html.format(name=os.getenv("MESSAGE"))

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=8085) 
