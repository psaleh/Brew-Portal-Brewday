FROM ubuntu:16.04

RUN apt-get update -y
RUN apt-get install -y python python-pip python-dev build-essential
RUN pip install --upgrade pip
WORKDIR /run

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY BrewDataLogger.py /run/server.py
CMD [ "python", "/run/server.py" ]
EXPOSE 12347