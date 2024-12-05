from flask import Flask, render_template, request

app = Flask(__name__)

@app.route('/', methods=['GET'])
def index():
    print("Test log", flush=True)
    return render_template('index.html')

if __name__ == "__main__":
    app.run(host='0.0.0.0', debug=True)


# gunicorn your_application.wsgi