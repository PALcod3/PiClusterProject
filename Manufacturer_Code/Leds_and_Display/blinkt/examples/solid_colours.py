#!/usr/bin/env python

import time

from blinkt import set_pixel, show


blinkt.set_clear_on_exit()

step = 0

while True:

    cmd = "hostname"
    HOSTNAME = subprocess.check_output(cmd, shell=True)
    cmd = "microk8s kubectl get no | grep " + str(HOSTNAME) + " | grep -q 'Ready' && echo 'ready'"
    STATUS = subprocess.check_output(cmd, shell=True)

    if str(STATUS) == "ready":
        set_pixel(7, 0, 128, 0, 0.1)

    show()
    time.sleep(300)
