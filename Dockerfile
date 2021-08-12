FROM ubuntu:18.04

RUN apt-get update -y && \
    apt-get install -y python3-pip python3-dev

COPY ./app/requirements.txt /app/requirements.txt

WORKDIR /app

ENV APP=/app

RUN pip3 install -r requirements.txt

COPY ./app/ /app

CMD ["python3", "./__init__.py"]