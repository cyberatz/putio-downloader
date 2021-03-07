#!/bin/sh
rclone sync putio:Movies /data

echo "Check status of downloads"

echo "Delete from Putio"
