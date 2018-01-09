FROM ubuntu:14.04

RUN apt-get update \
        && apt-get install -y --no-install-recommends \
            curl \
            postgresql-9.3

COPY PwnAdventure3Server.tar.gz /tmp/PwnAdventure3Server.tar.gz

RUN mkdir -p /opt/pwn-adventure3 \
        && tar -x -z -v -f /tmp/PwnAdventure3Server.tar.gz --strip-components=1 -C /opt/pwn-adventure3 \
        && rm /tmp/PwnAdventure3Server.tar.gz

COPY docker-entrypoint.sh /opt/pwn-adventure3/MasterServer/docker-entrypoint.sh
RUN chmod +x /opt/pwn-adventure3/MasterServer/docker-entrypoint.sh

USER postgres
WORKDIR /opt/pwn-adventure3/MasterServer

RUN /etc/init.d/postgresql start \
        && createdb -w --owner=postgres master \
        && psql master -f initdb.sql

ENTRYPOINT "/opt/pwn-adventure3/MasterServer/docker-entrypoint.sh"