build:
	docker build -t actions .
run:
	docker run --rm actions:latest python3 /opt/run.py
