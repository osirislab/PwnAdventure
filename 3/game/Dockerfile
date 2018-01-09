FROM ubuntu:14.04

COPY PwnAdventure3Server.tar.gz /tmp/PwnAdventure3Server.tar.gz

RUN mkdir -p /opt/pwn-adventure3 \
        && tar -x -z -v -f /tmp/PwnAdventure3Server.tar.gz --strip-components=1 -C /opt/pwn-adventure3 \
        && rm /tmp/PwnAdventure3Server.tar.gz

COPY docker-entrypoint.sh /opt/pwn-adventure3/GameServer/docker-entrypoint.sh
RUN chmod +x /opt/pwn-adventure3/GameServer/docker-entrypoint.sh

ENTRYPOINT "/opt/pwn-adventure3/GameServer/docker-entrypoint.sh"l