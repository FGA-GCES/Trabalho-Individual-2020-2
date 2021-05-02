# base image  (last source release 02/05/21)
FROM python:3.9.4

# install dependencies  
RUN pip install djangorestframework psycopg2 django-cors-headers

# where your code lives  
WORKDIR /api 

#copy project
COPY . .
 
# port where the Django app runs  
EXPOSE 8000  

# start server  
CMD python3 manage.py migrate && python3 manage.py runserver 0.0.0.0:8000 