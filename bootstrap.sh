#!/bin/bash -e

# Add docker repo to yum
echo "[Command] sudo cp sync/docker.repo /etc/yum.repos.d/"
sudo cp sync/docker.repo /etc/yum.repos.d/

# Update existing packages and install docker engine
echo "[Command] sudo yum update -y"
sudo yum update -y
echo "[Command] sudo yum install docker-engine -y"
sudo yum install docker-engine -y

# Add current user to docker group
echo "[Command] sudo usermod -aG docker vagrant"
sudo usermod -aG docker vagrant
echo "[Command] sudo chkconfig docker on"
sudo chkconfig docker on

# Start docker service
echo "[Command] sudo service docker start"
sudo service docker start
