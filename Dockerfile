FROM rclone/rclone:latest
RUN apk update  && \
    apk add supervisor 

# supervisor
COPY supervisord.conf /etc/supervisord.conf
COPY sync.sh /sync.sh

# start stuff
CMD ["supervisord", "-n", "-c", "/etc/supervisord.conf"]
