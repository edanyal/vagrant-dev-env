#!/bin/bash -e

echo "*********"
echo "********* Installing Docker"
echo "*********"

# Add docker repo to yum
sudo cp sync/install/docker/docker.repo /etc/yum.repos.d/

# Update existing packages and install docker engine
sudo yum install docker-engine -y

# Add current user to docker group
sudo usermod -aG docker vagrant
sudo chkconfig docker on

# Start docker service
sudo systemctl enable docker.service
sudo systemctl start docker.service
