#!/bin/sh
SAVEIFS=$IFS
IFS=$(echo -en "\n\b")

echo "Sync downloads"
#rclone sync putio:Movies /data
#rclone sync -P putio:Movies /data/
rclone sync -P putio: /data/

#echo "Check status of downloads"

#echo "Delete from Putio"
#rclone purge putio:Movies
#rclone purge putio:

#echo "Make Movies Folder"
#rclone mkdir putio:Movies

echo "Delete from Putio"
#for i in $(rclone lsd putio:  | sed 's/\-1//g' | sed 's/\([0-9][0-9][0-9][0-9]\)\-\([0-9][0-9]\)\-\([0-9][0-9]\)//g' | sed 's/\([0-9][0-9]\)\:\([0-9][0-9]\)\:\([0-9][0-9]\)//g' | sed 's/\ \ \ //g' | awk -F'  ' '{print $1}') ;do echo "$i";done
for i in $(rclone lsd putio:  | sed 's/\-1//g' | sed 's/\([0-9][0-9][0-9][0-9]\)\-\([0-9][0-9]\)\-\([0-9][0-9]\)//g' | sed 's/\([0-9][0-9]\)\:\([0-9][0-9]\)\:\([0-9][0-9]\)//g' | sed 's/\ \ \ //g' | awk -F'  ' '{print $1}') ;do rclone purge putio:"$i";done

IFS=$SAVEIFS

sleep 60
