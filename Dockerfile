FROM python:3.6-slim

RUN pip install gunicorn json-logging-py
RUN pip install honcho
RUN pip install -r requirements.txt

COPY . /graphql
WORKDIR /graphql
RUN mkdir /graphql/logs

ENV FLASK_APP=./app.py
ENV FLASK_ENV=dev

ENTRYPOINT ["honcho", "start"]
