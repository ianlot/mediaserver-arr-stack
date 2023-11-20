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

