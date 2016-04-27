#!/bin/bash -e

echo "*********"
echo "********* Global provisioning tasks"
echo "*********"

#update existing libraries of base box
sudo yum update -y
sudo yum install -y epel-release python-pip
sudo pip install requests
