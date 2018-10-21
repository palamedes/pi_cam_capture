#!/bin/bash

# Set our date
DATE=$(date +"%Y-%m-%d_%H:%M:%S")

# jump into the images dir
cd /home/pi/Test/images

# Add new files!
git add *
git commit -m "Image update - $DATE"

# Remove old files older than 30 days
find . -type f -name '*.jpg' -mtime +30 -delete
git add -u

# Push to the server
git push


