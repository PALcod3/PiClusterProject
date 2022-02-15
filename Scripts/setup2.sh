#!/bin/sh
#Copy Files to Pi
sudo cp Scripts/startup.sh /etc/init.d/startup.sh
sudo cp Manufacturer_Code/Leds_and_Display/blinkt /home/pi/Leds_and_Display/blinkt/
sudo cp Manufacturer_Code/Leds_and_Display/Display /home/pi/Leds_and_Display/Display/
sudo cp Manufacturer_Code/Leds_and_Display/led-shim /home/pi/Leds_and_Display/led-shim/
sudo cp Scripts/mk8s_stats.py /home/pi/Leds_and_Display/
sudo cp Scripts/stats_temp.py /home/pi/Leds_and_Display/
#Install LED and Display Libraries
cd /home/pi/Leds_and_Display/blinkt/library/
sudo python setup.py install
cd /home/pi/Leds_and_Display/Display/Adafruit_Python_SSD1306-master/
sudo python setup.py install
cd /home/pi/Leds_and_Display/led-shim/library/
sudo python setup.py install
#Initiate the Start of the Pi
sudo chmod 755 /etc/init.d/startup.sh
sudo update-rc.d startup.sh defaults
sudo shutdown -r now
#Continue with installing Snap