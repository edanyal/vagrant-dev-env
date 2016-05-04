# Vagrant environment with centos/7 as the operating system with docker:latest installed.

* CentOS 7
* Docker:latest
* jenkins:latest
* /data folder mapped to VM's /data folder
* /src folder mapped to VMs /src folder

## Installation

1. [Download and install VirtualBox](https://www.virtualbox.org/wiki/Downloads)
2. [Download and install Vagrant](https://www.vagrantup.com/downloads.html)
3. Install vagrant virtualbox guest filesystem plugin for mouting files.

	``` > vagrant plugin install vagrant-vbguest ```

4. Clone this repo
5. Run "vagrant up" in repo root folder.

	``` > vagrant up ```

## VM Access

* Default IP: **10.141.141.10** (can be changed in config.js)

* SSH access to VM via 

	``` > vagrant ssh ```

## Jenkins - Port 9001
#### Set-up

* The default admin password will be on your host machine in <repo-root>/data/jenkins_home/secrets/initialAdminPassword

#### Data

* <repo-root>/data/jenkins_home - Jenkins jobs and configuration files