FROM python:3.9.1

RUN mkdir -p /usr/src/back
WORKDIR /usr/src/back

RUN apt-get update && apt-get install -y --no-install-recommends \
        python3-pip \
        python3-dev \
        libpq-dev \
        build-essential \
        netcat \
        postgresql \
        postgresql-contrib \
        flake8

RUN pip3 install django \
        djangorestframework \
        psycopg2 \
        django-cors-headers

COPY . /usr/src/back

RUN ["chmod", "+x", "/usr/src/back/entrypoint.sh"]

CMD ["/usr/src/back/entrypoint.sh"]
