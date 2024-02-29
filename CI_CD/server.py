from flask import Flask, render_template
app = Flask(__name__)

@app.route("/", methods=["GET"])
def index():
    intro_message = "SCA Devops Channel Task 3, CI/CD Project"
    author_name="Mary Jonah"
    author_linkedin = "https://www.linkedin.com/in/jonahmary17/"
    return render_template('index.html', intro_message=intro_message, author_name=author_name, author_linkedin=author_linkedin)

if __name__ == "__main__":
    app.run(host='0.0.0.0')
