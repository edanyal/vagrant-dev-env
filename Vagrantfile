# -*- mode: ruby -*-
# vi: set ft=ruby :
# https://docs.vagrantup.com

Vagrant.configure(2) do |config|
  # Base VM Box
  config.vm.box = "centos/7"
  
  # Network configuration
  config.vm.network :forwarded_port, guest: 8080, host: 8080
  # config.vm.network "forwarded_port", guest: 80, host: 8080
  # config.vm.network "private_network", ip: "192.168.33.10"
  # config.vm.network "public_network"
  # config.vm.synced_folder "../data", "/vagrant_data"
  
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
  end

  config.vm.provision "shell", path: "bootstrap.sh"
end
