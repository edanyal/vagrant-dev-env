#!/bin/bash

echo "*********"
echo "********* Provisioning Artifactory"
echo "*********"

## Run jenkins docker image, restart whenever docker does (e.g. vagrant halt, vagrant up) 
## also map to the /data folder on the GUEST which is mapped to <PROJECT_ROOT>/.data on the host.

export ARTIFACTORY_HOME=/data/artifactory

if [ $(docker ps | grep -c "artifactory" ) = 0 ]; then
	echo "********* Starting artifactory container."
	sudo docker rm artifactory
	sudo docker run --name="artifactory" -d -p 9002:80 -p 9003:8081 -p 443:443 \
			-v /data/artifactory/data:/var/opt/jfrog/artifactory/data \
			-v /data/artifactory/logs:/var/opt/jfrog/artifactory/logs \
			-v /data/artifactory/backup:/var/opt/jfrog/artifactory/backup \
			-v /data/artifactory/etc:/var/opt/jfrog/artifactory/etc \
			jfrog-docker-reg2.bintray.io/jfrog/artifactory-pro:latest
else
	echo "********* Artifactory container already running."
fi

exit 0;
