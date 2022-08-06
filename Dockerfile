FROM python:3.9.7-slim-buster
RUN apt-get update && apt-get upgrade -y
RUN apt-get install python3-pip -y
RUN pip3 install -U pip
COPY . /kaal/
WORKDIR /kaal/
RUN pip3 install -U -r requirements.txt
CMD python3 bot.py
