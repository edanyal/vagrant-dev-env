#!/bin/bash -e

## Run jenkins docker image, restart whenever docker does (e.g. vagrant halt, vagrant up) 
## also map to the /data folder on the GUEST which is mapped to <PROJECT_ROOT>/.data on the host.
sudo docker run --restart=always -d -p 8080:8080 -p 50000:50000 -v /data/jenkins_home:/var/jenkins_home jenkins