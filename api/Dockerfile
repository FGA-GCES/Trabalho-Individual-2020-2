FROM python:3
ENV PYTHONUNBUFFERED 1

WORKDIR /api
COPY . /api/

RUN pip install --upgrade pip && pip3 install -r requirements.txt
