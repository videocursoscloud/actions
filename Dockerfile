FROM ubuntu:xenial

RUN apt-get update && \ 
	apt-get install python3=3.5.1-3 python3-pip=8.1.1-2ubuntu0.6 python3-setuptools=20.7.0-1 -y --no-install-recommends && \
	rm -rf /var/lib/apt/lists/*


COPY requirements.txt /opt
COPY hello.py /opt
COPY flask.sh /opt
#RUN pip3 install --upgrade pip
RUN pip3 install -r /opt/requirements.txt --no-cache-dir

WORKDIR /opt

EXPOSE 5000 
CMD ["./flask.sh"]
