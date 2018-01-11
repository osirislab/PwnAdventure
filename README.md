# Pwn Adventure CTF

[![Unbearable](https://user-images.githubusercontent.com/166333/34793732-5f73cdd8-f61a-11e7-828c-b4f180fc2e5f.gif)](https://www.youtube.com/watch?v=qzDyqWHzhjA)

Pwn Adventure is a series of games released by [Vector 35](http://vector35.com/) that are designed to be hacked. 

With these files you can relive the CTF competition with your friends using the [Vector 35](https://vector35.com/) [game files](http://pwnadventure.com/) and [CTFd](https://github.com/CTFd/CTFd) backup format. 

![https://github.com/CTFd/CTFd](https://user-images.githubusercontent.com/166333/34800164-a711a8e8-f630-11e7-9424-7898c49414d4.png)

## Pwn Adventure 2

To setup PwnAdventure 2 with CTFd:

1. Run `python import.py PwnAdventure 2.2018-01-08.zip challenges` from the CTFd source directory and point to the appropriate zip file in the `pwnadventure/2/` directory.

2. Run a PwnAdventure 2 server:

```bash
cd 2/
docker-compose up
```

3. Direct users to install Pwn Adventure 2 and specify your server in the game's settings.
 * [Windows](http://ghostintheshellcode.com/2014-final/pwnadventure2_windows.zip) 
 * [Mac](http://ghostintheshellcode.com/2014-final/pwnadventure2_mac.zip) 
 * [Linux](http://ghostintheshellcode.com/2014-final/pwnadventure2_linux.zip)

## Pwn Adventure 3

To setup PwnAdventure 3 with CTFd:

1. Run `python import.py PwnAdventure 3.2018-01-08.zip challenges` from the CTFd source directory and point to the appropriate zip file in the `pwnadventure/3/` directory.

2. Run a PwnAdventure 3 server: 

	*Help Wanted: This is not currently working but the original PwnAdventure 3 servers are still running*

	1. Download the [Pwn Adventure 3 Linux Game](http://pwnadventure.com/PwnAdventure3_Launcher_Linux.zip) client. 

	2. Run the game client to populate the `PwnAdventure3_Data` folder. 

	3. Copy `PwnAdventure3_Data` to `pwnadventure/3/game/`.

	4. Run docker-compose up from the `pwnadventure/3/` directory.

3. Direct users to install Pwn Adventure 3 and connect to the default servers or specify your server in the game's settings.
 * [Windows](http://www.pwnadventure.com/PwnAdventure3_Launcher_Windows.zip) 
 * [Mac](http://www.pwnadventure.com/PwnAdventure3_Launcher_Mac.zip) 
 * [Linux](http://www.pwnadventure.com/PwnAdventure3_Launcher_Linux.zip)
