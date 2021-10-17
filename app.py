# import the Flask class from the flask module.
from flask import Flask

# create the application object.
app = Flask(__name__)

# use decorators to link the function to a url.
@app.route("/")
@app.route("/hello")
# define the view using a function, which returns a string.
def hello_world():
    return "Why wait here. Go & Check if the calling is working or not !!"

# dynamic route
@app.route("/<search_query>")
def search(search_query):
    return "Hello" + " " + search_query

# start the development server using the run() method
if __name__ == "__main__":
    app.debug=True
    app.run(host="0.0.0.0", port=8000)
