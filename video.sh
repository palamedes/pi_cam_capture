#!/bin/bash

# Set our date
DATE=$(date +"%Y-%m-%d_%H:%M:%S")

# Capture a video at 640 x 480
raspivid -t 5000 -w 640 -h 480 -fps 25 -b 1200000 -n -o ./tmpvideo.h264

# Wrap the video captured in an mp4 container
MP4Box -add ./tmpvideo.h264 /home/pi/Test/images/video_$DATE.mp4
rm ./tmpvideo.h264
