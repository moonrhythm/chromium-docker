FROM debian:bullseye-slim

RUN apt-get update && \
	apt-get install -y chromium && \
	rm -rf /var/lib/apt/lists/*

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
