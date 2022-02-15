#!/bin/sh
#install docker
curl -sSL https://get.docker.com | sh
#using docker as a non-root user
sudo usermod -aG docker pi && newgrp docker
#test docker
docker run hello-world
# create docker swarm
#TODO IF Manager then init Else join command
#TODO Before you can join you have to get the Token from the manager
sudo docker swarm init --advertise-addr $(hostname -i)
sudo docker swarm join-token -q worker > /home/pi/temp_dockertoken.txt
#dockertoken.txt has the token for joining the swarm
sudo rm /home/pi/temp_dockertoken2.txt
#TODO Copy the file to the other workers
#TODO Use in Workers and use IP of Manager
docker swarm join --token $(docker swarm join-token -q worker) $(hostname -i)


