FROM python:3

ENV PYTHONUNBUFFERED 1
WORKDIR /api

COPY requirements.txt requirements.txt
RUN pip install --upgrade pip && pip3 install -r requirements.txt

COPY . .

EXPOSE 8080