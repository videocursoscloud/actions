FROM ubuntu:latest

RUN apt update
RUN apt install python3 python3-pip -y


ADD run.py /opt
