#!/bin/bash -e

echo "*********"
echo "********* Installing Jenkins"
echo "*********"

## Run jenkins docker image, restart whenever docker does (e.g. vagrant halt, vagrant up) 
## also map to the /data folder on the GUEST which is mapped to <PROJECT_ROOT>/.data on the host.
sudo docker run --name="jenkins_master" --restart=always -d -p 9001:8080 -p 50000:50000 -v /data/jenkins_home:/var/jenkins_home jenkins