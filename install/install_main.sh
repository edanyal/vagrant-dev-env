#!/bin/bash

echo "*********"
echo "********* Global provisioning tasks"
echo "*********"

# Update existing libraries of base box
sudo yum -y update

##
# Install pip and python packages
#sudo curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
#sudo pip install requests

exit 0;