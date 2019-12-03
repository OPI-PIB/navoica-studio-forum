FROM python:3.7
ENV PYTHONUNBUFFERED 1

RUN mkdir /code
COPY ./project /code

COPY requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

WORKDIR /code

RUN python manage.py migrate
RUN python manage.py createsuperuser --username=admin --email=nazgut@gmail.com --noinput
#RUN python manage.py loaddata example_project/fixtures/**
