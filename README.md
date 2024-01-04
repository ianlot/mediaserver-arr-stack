# mediaserver-arr-stack
**This docker-compose file contains:**
Jackett, Radarr, Sonarr, Overseerr, Tautulli.

## Usage
### 1. Install Docker
`curl -sSL https://get.docker.com/ | CHANNEL=stable bash`

If you do not have curl installed, then first install it: `apt install curl`

### 2. Install portainer (not required)
`docker volume create portainer_data`

`docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest`

### 3. Create user and group

```
adduser mediaserver
addgroup dockergroup
usermod -a -G dockergroup mediaserver
```
Check the user ID and group ID with the command:
`id mediaserver`

You will need to replace PUID and PGID in docker-compose.yml with the mediaserver user ID and group ID.

### 3. Create directories
Create directories for config files (diffierent directory for jackett, radarr, sonarr, overseerr, tautulli).

### 4. Create directories
Replace the directories in the docker-compose.yml

### 5. Deploy your edited docker-compose.yml
Have fun! :)

### If Jackett can't connect to Torrent Trackers because of SSL error:
Change your nameservers in:
`/etc/resolv.conf`
to 9.9.9.9 and 1.1.1.1

