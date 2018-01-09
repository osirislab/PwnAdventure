# Pwn Adventure

Pwn Adventure is a series of games released by Vector 35 that are designed to be hacked. 

These files make it easy to run your own Pwn Adventure CTF using the Vector 35 game files and CTFd. 


To setup PwnAdventure 2 with CTFd:

1. Run `python import.py <PwnAdventure 2.2018-01-08.zip> challenges` from the CTFd source directory and point to the appropriate zip file in the 2/ directory.

2. Run a PwnAdventure 2 server:

```bash
cd 2/
docker-compose up
```

To setup PwnAdventure 3 with CTFd:

1. Run `python import.py <PwnAdventure 3.2018-01-08.zip> challenges` from the CTFd source directory and point to the appropriate zip file in the 3/ directory.

2. Run a PwnAdventure 3 server: *Note this is not currently working*

```bash
cd 3/
docker-compose up
```