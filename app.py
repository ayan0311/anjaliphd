from flask import Flask, render_template, redirect, session
import random



app = Flask(__name__)

NUM_PARAGRAPHS_PER_USER = 5

#assign random User ID and paragraph IDs to each anonymous user
@app.before_request
def assign_user_id():
    return

@app.route("/")
def index():
    return render_template("layout.html")










if __name__ == "__main__":
    app.run(debug=True, port=5001)