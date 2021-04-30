#VERSION
FROM python:3.9.4
#INSTALA DEPENDENCIAS
RUN pip install pylint psycopg2 django-cors-headers djangorestframework
#PASTA BASE
WORKDIR /api
#COPIA O CONTEUDO DA API PARA A PASTA BASE
COPY . .
#QUANDO FOR EXECUTADO O CONTAINER O COMANDO CMD EXECUTA ESSE COMANDO
CMD python3 manage.py migrate && python3 manage.py runserver 0.0.0.0:8000