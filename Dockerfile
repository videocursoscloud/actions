FROM ubuntu:xenial

RUN apt-get update && \ 
	apt-get install python3=3.5.1-3 python3-pip=8.1.1-2ubuntu0.6 -y --no-install-recommends && \
	rm -rf /var/lib/apt/lists/*


COPY run.py /opt
