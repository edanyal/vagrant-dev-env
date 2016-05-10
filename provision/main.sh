#!/bin/bash

echo "*********"
echo "********* Global provisioning tasks"
echo "*********"

# Update existing libraries of base box
echo "********* yum -y update"
sudo yum -y update

# Install git-all, can probably scale this back.
if ! [ -x "$(command -v git)" ]; then
	echo "********* Installing git-all"
	sudo yum -y install git-all
fi

# Install pip and python packages
if ! [ -x "$(command -v pip)" ]; then
	echo "********* Installing pip"
	sudo curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
	sudo python get-pip.py
 	# sudo pip install requests
fi

exit 0;
