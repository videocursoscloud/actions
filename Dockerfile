FROM ubuntu:xenial

RUN apt update
RUN apt install python3 python3-pip -y


COPY run.py /opt
