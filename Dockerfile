FROM python:3.7

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Setup directory structure
RUN mkdir /app
WORKDIR /app
ADD . /app/

#Install the Dependecy for mysqlclient 1.4.6
RUN apt-get update
RUN apt-get install python3-dev default-libmysqlclient-dev  -y


# Install dependencies
ADD requirements.txt /app/
RUN pip install --upgrade pip && pip install -r requirements.txt



