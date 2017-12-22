#!/bin/bash


echo "Loading Masterserver"

{
    cd /root/pwnadventure2_server/MasterServer
    mono MasterServer.exe &
}

sleep 5
echo "Loading GameServer"
{
    cd /root/pwnadventure2_server/GameServer
    # if [[ $(grep -c 'ip' ./server.ini) -eq 0 ]]; then
    #     echo ip=$(ip addr | grep inet | grep eth0 | awk '{print $2}' | sed 's|/.*||') >> ./server.ini
    # else
    #     sed -i "s/ip=.*/ip=$(ip addr | grep inet | grep eth0 | awk '{print $2}' | sed 's|/.*||')/" ./server.ini
    # fi
    echo ip=192.168.1.15 >> ./server.ini
    ./start_servers.py
}

echo "Finished"