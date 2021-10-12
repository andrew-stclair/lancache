# lancache
My docker-compose script for a lan cache using lancache.net's monolithic cache and dns containers

# Running
Edit the .env file and set your disk space and memory usage limits, as well as the maximum time to keep files.

run either `run.sh` for linux (and maybe macos, have not tested this) or `run.cmd` for windows.

use `nslookup lancache.steamcontent.com [ip of dns container]` and check the ip address returned is on your local network.

## dns serving wrong ip
you will need to run the following

### Windows:
```
set EXTERNAL_IP = [LAN IP]
docker-compose -f "docker-compose.yml" up -d
```
replacing [LAN IP] with your cache server's local LAN IP address

### Linux:
```
EXTERNAL_IP=[LAN IP]
docker-compose -f "docker-compose.yml" up -d
```
replacing [LAN IP] with your cache server's local LAN IP address
