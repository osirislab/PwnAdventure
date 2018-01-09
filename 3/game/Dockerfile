FROM ubuntu:14.04

RUN apt-get update \
        && apt-get install -y curl unzip xvfb xfonts-100dpi xfonts-75dpi xfonts-cyrillic xorg dbus-x11

COPY PwnAdventure3Server.tar.gz /tmp/PwnAdventure3Server.tar.gz

RUN mkdir -p /opt/pwn-adventure3 \
        && tar -x -z -v -f /tmp/PwnAdventure3Server.tar.gz --strip-components=1 -C /opt/pwn-adventure3 \
        && rm /tmp/PwnAdventure3Server.tar.gz

WORKDIR /opt/pwn-adventure3/GameServer

COPY docker-entrypoint.sh docker-entrypoint.sh
RUN chmod +x docker-entrypoint.sh

ENTRYPOINT "/opt/pwn-adventure3/GameServer/docker-entrypoint.sh"