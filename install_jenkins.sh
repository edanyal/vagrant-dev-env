#!/bin/bash -e

sudo docker run -d -p 8080:8080 -p 50000:50000 -v /data/jenkins_home:/var/jenkins_home jenkins
