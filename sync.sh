#!/bin/sh
#rclone sync putio:Movies /data
rclone sync -P putio:Movies /data/

echo "Check status of downloads"

echo "Delete from Putio"
rclone purge putio:Movies

echo "Make Movies Folder"
rclone mkdir putio:Movies
