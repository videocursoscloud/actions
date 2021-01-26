FROM ubuntu:xenial

RUN apt-get update && \ 
	apt-get install python3 python3-pip -y --no-install-recommends && \
	rm -rf /var/lib/apt/lists/*


COPY run.py /opt
