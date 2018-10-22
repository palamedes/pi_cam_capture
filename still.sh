#!/bin/bash

# Set our date
DATE=$(date +"%Y-%m-%d_%H:%M:%S")

# Capture a current image that we can always reference.
raspistill -t 1 -n -q 5 -w 1920 -h 1200 --annotate "$DATE" -o /home/pi/Test/images/current.jpg


