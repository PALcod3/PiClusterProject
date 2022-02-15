#!/usr/bin/env python

import time

import subprocess

from blinkt import set_pixel, show, set_clear_on_exit

set_pixel(7, 255, 255, 0, 0.1)
show()
set_clear_on_exit()

while True:

    cmd = "hostname | tr -d '\n'"
    HOSTNAME = subprocess.check_output(cmd, shell=True)
    cmd = "docker node ls | grep " + str(HOSTNAME) + " | grep -q 'Ready' && echo 'ready'"
    try:
        STATUS = subprocess.check_output(cmd, shell=True)
    except subprocess.CalledProcessError as e:
        print(e.output)
        set_pixel(7, 255, 255, 0, 0.1)
        show()
        time.sleep(2)
        set_pixel(7, 0, 0, 0.1)
        show()
        continue

    if STATUS == 'ready\n':
        set_pixel(7, 0, 255, 0, 0.1)
        show()
        time.sleep(300)

    else:
        set_pixel(7, 255, 0, 0.1)
        show()
        time.sleep(300)

