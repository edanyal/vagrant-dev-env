# -*- mode: ruby -*-
# vi: set ft=ruby :
# https://docs.vagrantup.com

ENV_ROOT = File.dirname(__FILE__)
ENV_CONFIG = File.expand_path(File.join(File.dirname(__FILE__), 'config.json'))
require_relative File.join(ENV_ROOT, 'lib', 'ruby', 'playa_settings')
envconf = PlayaSettings.new(ENV_CONFIG)

Vagrant.configure(2) do |config|
  # Base VM Box
  config.vm.box = "centos/7"
  
  # Network configuration
  # config.vm.network :forwarded_port, guest: 8080, host: 8080
  config.vm.network :private_network, ip: envconf.ip_address

  # Storage stuff
  config.vm.synced_folder ".data", "/data"
  config.vm.synced_folder "src", "/src"
  
  # Custom config for provider, only vb for now.
  config.vm.provider :virtualbox do |vb|
    vb.name = envconf.box_name
    vb.customize ['modifyvm', :id, '--memory', envconf.vm_ram]
    vb.customize ['modifyvm', :id, '--cpus',   envconf.vm_cpus]
  end

  # Install and configure stuff we want
  config.vm.provision :shell, path: "install/install_main.sh"
  config.vm.provision :shell, path: "install/docker/install_docker.sh"
  config.vm.provision :shell, path: "install/jenkins/install_jenkins.sh"
  #config.vm.provision :shell, path: "install/rancher/install_rancher.sh"
  config.vm.provision :shell, path: "install/kubernetes/install_kubernets.sh"
end
