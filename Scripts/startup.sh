#!/bin/sh
### BEGIN INIT INFO
# Provides:         startup.sh
# Required-Start:
# Required-Stop:
# Should-Start:      
# Default-Start:     2 3 4 5
# Default-Stop:	     0 1 6
# Short-Description: Starting Display and LEDS and mounts ssd
# Description:       Starting Display and LEDS and mounts ssd
### END INIT INFO
mkdir /media/ssd
mount /dev/sda1 /media/ssd/
python  /home/pi/Leds_and_Display/startup/stats_temp.py &
python  /home/pi/Leds_and_Display/startup/mk8s_stats.py &
python  /home/pi/Leds_and_Display/startup/docker_swarm_stats.py &
exit 0

