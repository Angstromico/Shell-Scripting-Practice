#!/bin/bash

host=$1
path=$2
storage=$3
storage_path=$4

date=$(date +"%Y-%m-%d_%H-%M-%S")

if [ "$host" == "localhost" ] || [ "$host" == "127.0.0.1" ] || [ "$host" == "$(hostname)" ]; then
    echo "Backing up local files..."
    tar -czf "$storage_path/backup_$date.tar.gz" "$path"
else
    echo "Backing up files from remote host $host..."
    ssh "$host" "tar -czf - '$path'" | dd of="$storage_path/backup_$date.tar.gz"
fi

state=$(ssh "$storage" ls -1 "$storage_path/backup_$date.tar.gz" | wc -l)

# Verify if the backup was created successfully
if [ "$state" = "1" ]; then 
    echo "Backup completed successfully and stored at $storage_path/backup_$date.tar.gz"
else
    echo "Backup failed!"
fi