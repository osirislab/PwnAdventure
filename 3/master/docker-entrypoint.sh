#!/usr/bin/env bash
/etc/init.d/postgresql start
sleep 300
./MasterServer --create-server-account
./MasterServer