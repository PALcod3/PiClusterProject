#!/bin/sh
### BEGIN INIT INFO
# Provides:         startup.sh
# Required-Start:
# Required-Stop:
# Should-Start:      
# Default-Start:     2 3 4 5
# Default-Stop:	     0 1 6
# Short-Description: Starting Display and LEDS
# Description:       Starting Display and LEDS
### END INIT INFO
mkdir /media/ssd
mount /dev/sda1 /media/ssd/
python  /home/pi/Leds_and_Display/startup/stats_temp.py &
exit 0

