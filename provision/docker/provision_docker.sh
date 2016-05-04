#!/bin/bash

echo "*********"
echo "********* Provisioning Docker"
echo "*********"

# Add docker repo to yum
if ! [ -f /etc/yum.repos.d/docker.repo ]; then
	sudo cp sync/provision/docker/docker.repo /etc/yum.repos.d/
fi

# If docker isn't installed, then install it.
if ! [ -x "$(command -v docker)" ]; then
	echo "********* Installing docker."
	# install docker engine
	sudo yum install docker-engine -y

	# set up docker permissions
	sudo usermod -aG docker vagrant
	sudo chkconfig docker on
else
	echo "********* Docker is already installed."
fi

if [ $(systemctl status docker.service | grep -c "running" ) = 0 ]; then
	echo "********* Starting docker service."
	# Start docker service
	sudo systemctl enable docker.service
	sudo systemctl start docker.service
else
	echo "********* Docker service already started."
fi

exit 0;
