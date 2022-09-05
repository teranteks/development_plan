FROM python:3.8-slim-buster
MAINTAINER Teranteks

EXPOSE 5000


RUN mkdir /app
RUN mkdir /app/tests
WORKDIR /app

COPY ./app_code/main.py /app/app.py
COPY ./app_code/requirements.txt /app/requirements.txt
COPY ./app_code/tests/* /app/tests/

RUN apt-get update && apt-get upgrade
RUN apt install -y curl
RUN apt install -y stress
RUN pip3 install -r /app/requirements.txt

CMD [ "python3", "./app.py"]

HEALTHCHECK CMD curl --fail http://localhost:5000/healthcheck || exit 1

