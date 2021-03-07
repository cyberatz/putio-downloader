#!/bin/sh
#rclone sync putio:Movies /data
#rclone sync -P putio:Movies /data/
rclone sync -P putio: /data/

#echo "Check status of downloads"

#echo "Delete from Putio"
#rclone purge putio:Movies
rclone purge putio: /data/

#echo "Make Movies Folder"
#rclone mkdir putio:Movies

sleep 60
