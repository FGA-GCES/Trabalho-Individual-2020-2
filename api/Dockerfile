FROM python:3.9.4

RUN pip install djangorestframework psycopg2 django-cors-headers pylint

WORKDIR /api

COPY . .

CMD python3 manage.py migrate && python3 manage.py runserver 0.0.0.0:8000