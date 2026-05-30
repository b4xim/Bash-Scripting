#!/bin/bash

file=/home/ubuntu/Desktop/study/app.log
curr_date=$(date +%Y-%m-%d)

awk '/ERROR/' $file >> /home/ubuntu/Desktop/study/errors_$curr_date.txt