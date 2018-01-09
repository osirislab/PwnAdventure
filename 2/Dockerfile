FROM ubuntu:12.04

ADD http://ghostintheshellcode.com/2014-final/pwnadventure2_server.tgz /root/

RUN cd /root && tar xvzf pwnadventure2_server.tgz && apt-get update -y && apt-get upgrade -y && apt-get install ia32-libs mono-devel python-netifaces -y
COPY docker-entrypoint.sh /root/pwnadventure2_server/docker-entrypoint.sh
COPY start_servers.py /root/pwnadventure2_server/GameServer/start_servers.py

RUN chmod +x /root/pwnadventure2_server/docker-entrypoint.sh && chmod +x /root/pwnadventure2_server/GameServer/start_servers.py

EXPOSE 4200
EXPOSE 12345

WORKDIR /root/pwnadventure2_server/

ENTRYPOINT ["/root/pwnadventure2_server/docker-entrypoint.sh"]