from flask import Flask

helloworld = Flask(__name__)

@helloworld.route("/")
def run():  
    return "PYTHON IS RUNNING IN DOCKER CONTAINER"

if __name__ == "__main__":
    helloworld.run(host="0.0.0.0", port=3000, debug=True)
