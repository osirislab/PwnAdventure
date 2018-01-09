# Pwn Adventure CTF

Pwn Adventure is a series of games released by Vector 35 that are designed to be hacked. 

With these files you can relive the CTF competition with your friends using the [Vector 35](https://vector35.com/) [game files](http://pwnadventure.com/) and [CTFd](https://github.com/CTFd/CTFd) backup format. 

## Pwn Adventure 2

To setup PwnAdventure 2 with CTFd:

1. Run `python import.py PwnAdventure 2.2018-01-08.zip challenges` from the CTFd source directory and point to the appropriate zip file in the `pwnadventure/2/` directory.

2. Run a PwnAdventure 2 server:

```bash
cd 2/
docker-compose up
```

## Pwn Adventure 3

To setup PwnAdventure 3 with CTFd:

1. Run `python import.py PwnAdventure 3.2018-01-08.zip challenges` from the CTFd source directory and point to the appropriate zip file in the `pwnadventure/3/` directory.

2. Run a PwnAdventure 3 server: 

*Note this is not currently working but the original PwnAdventure 3 servers are still running*

1. Download the [Pwn Adventure 3 Linux Game](http://pwnadventure.com/PwnAdventure3_Launcher_Linux.zip) client. 

2. Run the game client to populate the `PwnAdventure3_Data` folder. 

3. Copy `PwnAdventure3_Data` to `pwnadventure/3/game/`.

4. Run docker-compose up from the `pwnadventure/3/` directory.
