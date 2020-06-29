FROM ubuntu:bionic

ARG version=1.24.0

RUN \
   apt-get -y update && \
   apt-get -y install ca-certificates curl docker.io && \
   rm -rf /var/lib/apt/lists/* && \
   curl -L "https://github.com/docker/compose/releases/download/$version/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
   chmod +x /usr/local/bin/docker-compose

ENTRYPOINT ["/usr/local/bin/docker-compose"]
