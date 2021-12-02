# putio-downloader

## Sample compose file
```
version: '3'
services:
  rclone:
    container_name: rclone
    image: andrevs/putio-downloader:latest
    environment:
      TZ: "Europe/Zurich"
    volumes:
       - '/share/Data/Sync/ServerWorkloads/rclone:/config/rclone'
       - '/share/Data/rclone:/data'
    dns:
      - 1.1.1.1
    restart: unless-stopped
    #entrypoint: ["tail", "-f", "/dev/null"]
    entrypoint: ["supervisord", "-n", "-c", "/etc/supervisord.conf"]
```


