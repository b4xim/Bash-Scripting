#!/bin/bash

disk_usage=$(df -h |grep '/$'| awk '{print $5}' | tr -d '%')

if [ $disk_usage -ge 80 ]; then
	echo "ALERT:: Disk Usage high! usage:$disk_usage"
else
	echo "Disk usage normal usage:$disk_usage""
fi