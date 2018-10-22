# The following starts the "live" mjpg stream that you can reach by going to {ipaddress}:8090/live.mjpg 
# It's not super fast at this point but it's not terrible either all things considered.

# It appears that we have ffmpeg, ffserver etc.. all already installed. 
# Edit /etc/ffserver.conf and make the .mjpg config the default ( delete the others after you make a backup of the file )

# You will need to add 'bcm2835-v4l2' to the /etc/modules file.  Just paste it in at the bottom of the file, save and reboot.  This will enable the /dev/video0 (and all the other /dev references) so the below line can work.

ffserver -f /etc/ffserver.conf & ffmpeg -v verbose -re -s 800x600 -f video4linux2 -i /dev/video0 http://localhost:8090/feed1.ffm


