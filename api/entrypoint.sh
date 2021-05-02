#!/bin/sh

echo "Waiting PosgreSQL..."

# use netcat to check database availability
while ! nc -z postgres 5432; do
  sleep 0.1
done

echo "PostgreSQL is ready!"

# create migrations and migrate changes
python3 manage.py makemigrations 
python3 manage.py migrate

# initialize django server
python manage.py runserver 0.0.0.0:8000