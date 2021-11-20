#!/bin/sh
SAVEIFS=$IFS
IFS=$(echo -en "\n\b")
mkdir -p /data/temp /data/data

echo "Sync downloads"
#rclone sync -P putio: /data/temp/
rclone move -P --delete-empty-src-dirs putio: /data/temp/ 
mv /data/temp/* /data/data/ 

#echo "Delete from Putio"
#for i in $(rclone lsd putio:   | sed 's/\([0-9][0-9][0-9][0-9]\)\-\([0-9][0-9]\)\-\([0-9][0-9]\)//g' | sed 's/\([0-9][0-9]\)\:\([0-9][0-9]\)\:\([0-9][0-9]\)//g' | sed 's/-1//g' | sed 's/ \+ //g') ;do rclone purge putio:"$i";done
#rclone delete putio:

IFS=$SAVEIFS

sleep 60
