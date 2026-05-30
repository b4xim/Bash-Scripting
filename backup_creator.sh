#!/bin/bash

curr_date=$(date +%Y-%m-%d_%H-%M-%S)
echo $curr_date
source_dir=/home/ubuntu/study
backup_dir=/home/ubuntu/backups

mkdir -p $backup_dir

tar -czvf $backup_dir/backup_$curr_date.tar.gz $source_dir