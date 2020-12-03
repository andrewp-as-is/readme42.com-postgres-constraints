FROM andrewpasis/python:3.8-alpine-lxml-psycopg2

COPY ./ /code/
WORKDIR /code/

RUN pip install -r /code/requirements.txt
