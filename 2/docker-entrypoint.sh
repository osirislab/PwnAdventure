#!/bin/bash


echo "Loading Masterserver"

{
    cd /root/pwnadventure2_server/MasterServer
    mono MasterServer.exe &
}

sleep 2

echo "Loading GameServer"
{
    cd /root/pwnadventure2_server/GameServer
    if [[ $(grep -c 'ip' ./server.ini) -eq 0 ]]; then
        echo ip=$HOST >> ./server.ini
    else
        sed -i "s/ip=.*/ip=$HOST/" ./server.ini
    fi
    cat ./server.ini
    python start_servers.py
}

echo "Finished"