FROM ubuntu:xenial

RUN apt-get update
RUN apt-get install python3 python3-pip -y


COPY run.py /opt
