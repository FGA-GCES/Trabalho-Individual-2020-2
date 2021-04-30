echo "Making migrations"
python3 manage.py migrate

echo "Starting server on Port 8000"
python3 manage.py runserver 0.0.0.0:8000
