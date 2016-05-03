# Vagrant environment with centos/7 as the operating system with docker:latest installed.

* CentOS 7
* Docker:latest
* jenkins:latest
* /data folder mapped to VM's /data folder
* /src folder mapped to VMs /src folder

## Installation

0. [Download and install VirtualBox](https://www.virtualbox.org/wiki/Downloads)
1. [Download and install Vagrant](https://www.vagrantup.com/downloads.html)
2. Install vagrant virtualbox guest filesystem plugin for mouting files.
```
	$> vagrant plugin install vagrant-vbguest
```
2. Clone this repo
3. Run "vagrant up" in main repo folder.
``` 
	$> vagrant up
```

## Jenkins - Port 9001
####Set-up:
*The default admin password will be on your host machine in .data/jenkins_home/secrets/initialAdminPassword

####Data:
data/jenkins_home - Jenkins jobs and configuration files