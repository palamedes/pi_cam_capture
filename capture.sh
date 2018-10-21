#!/bin/bash

# Set our date
DATE=$(date +"%Y-%m-%d_%H:%M:%S")

# Capture an image at 1920x1200 at a very low quality (5 - or the file size is just stupidly big)
raspistill -t 1 -n -q 5 -w 1920 -h 1200 -o /home/pi/Test/images/$DATE.jpg


