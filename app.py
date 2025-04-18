from flask import Flask
app = Flask(__name__)

@route("/")
def hello_world():
    print "Hello World!"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
