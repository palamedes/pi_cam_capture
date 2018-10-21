#!/bin/bash

DATE=$(date +"%Y-%m-%d_%H:%M:%S")

raspistill -t 1 -n -q 5 -w 1920 -h 1200 -o /home/pi/Test/images/$DATE.jpg


cd /home/pi/Test/images
git add *
git commit -m "Image update - $DATE"
git push

