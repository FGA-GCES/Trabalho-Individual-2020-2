# syntax=docker/dockerfile:1
FROM python:3 as base
ENV PYTHONUNBUFFERED=1
WORKDIR /api
ADD requirements.txt /api/
RUN pip install -r requirements.txt
ADD . /api/
