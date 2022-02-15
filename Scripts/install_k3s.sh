#!/bin/sh
#install k3s
curl -sfL https://get.k3s.io | sh -
#Enabling legacy iptables on Raspbian
sudo iptables -F
sudo update-alternatives --set iptables /usr/sbin/iptables-legacy
sudo update-alternatives --set ip6tables /usr/sbin/ip6tables-legacy
echo 'alias kubectl="k3s kubectl"' >> ~/.bashrc
sudo shutdown -r now