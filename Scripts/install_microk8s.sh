#!/bin/sh
#install microk8s
sudo snap install microk8s --classic --channel=1.20/stable
microk8s status --wait-ready
echo 'alias kubectl="microk8s kubectl"' >> ~/.bashrc
sudo usermod -a -G microk8s pi
sudo chown -f -R pi ~/.kube
newgrp microk8s
