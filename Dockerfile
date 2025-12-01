FROM python:3.12-slim

WORKDIR /app
COPY . .

RUN pip install flask

RUN echo "from flask import Flask\napp = Flask(__name__)\n@app.route('/')\ndef home(): return 'API de prueba funcionando'\nif __name__ == '__main__': app.run(host='0.0.0.0', port=8080)" > app.py

EXPOSE 8080
CMD ["python", "app.py"]
