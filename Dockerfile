FROM python:slim-buster

WORKDIR /app

RUN pip install flask

COPY . .

CMD ["python", "server.py"]
