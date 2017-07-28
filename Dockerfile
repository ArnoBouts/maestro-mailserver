FROM tvial/docker-mailserver:latest

COPY maestro-generate-dkim-config /usr/local/bin
