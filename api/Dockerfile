FROM python:3.6
ENV PYTHONUNBUFFERED 1
WORKDIR /api
COPY requirements.txt /api/
RUN pip3 install -r requirements.txt
COPY . /api/

