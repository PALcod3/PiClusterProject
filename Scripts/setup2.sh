#!/bin/sh
sudo cp /home/pi/setup/startup.sh /etc/init.d/startup.sh
cd /home/pi/Leds_and_Display/blinkt/library/
sudo python setup.py install
cd /home/pi/Leds_and_Display/Display/Adafruit_Python_SSD1306-master/
sudo python setup.py install
cd /home/pi/Leds_and_Display/led-shim/library/
sudo python setup.py install
sudo chmod 755 /etc/init.d/startup.sh
sudo update-rc.d startup.sh defaults
sudo shutdown -r now