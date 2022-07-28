# syntax=docker/dockerfile:1

FROM python:3.9-slim-buster


COPY /carlos-demo/ /carlos-demo/
COPY /requirements.txt /vector-demo/requirements.txt

WORKDIR /carlos-demo

RUN pip3 install -r requirements.txt

CMD ["greppo", "serve", "app.py", "--host=0.0.0.0"]