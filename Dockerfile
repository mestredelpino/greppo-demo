# syntax=docker/dockerfile:1

FROM python:3.9-slim-buster

WORKDIR /src
COPY / .

RUN pip3 install -r requirements.txt

WORKDIR /vector-demo

CMD ["greppo", "serve", "app.py"]