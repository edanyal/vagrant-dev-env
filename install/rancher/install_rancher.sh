#!/bin/bash -e

echo "*********"
echo "********* Installing Rancher"
echo "*********"

# Install rancher server
sudo docker run --name="rancher_server" -d -v /data/rancherdb:/var/lib/mysql --restart=always -p 9000:8080 rancher/server

RANCHER_TOKEN = python rancher_token.py

# Install cattle agent for this docker host
sudo docker run --name="cattle_agent" -e CATTLE_AGENT_IP='10.141.141.10' -d --privileged -v /var/run/docker.sock:/var/run/docker.sock -v /var/lib/rancher:/var/lib/rancher rancher/agent:v1.0.1 http://10.141.141.10:9000/v1/scripts/
