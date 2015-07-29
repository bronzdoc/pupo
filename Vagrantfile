# Defines our Vagrant environment
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # create puppet master node, and lets call it pupo...
  config.vm.define :pupo do |pupo_config|
      pupo_config.vm.box = "ubuntu/trusty64"
      pupo_config.vm.hostname = "puppet"
      pupo_config.vm.network :private_network, ip: "10.0.15.10"
      pupo_config.vm.provider "virtualbox" do |vb|
        vb.memory = "256"
      end
      pupo_config.vm.provision :shell, path: "puppet-master-config.sh"
  end


  # create some web servers
  2.times do |i|
    config.vm.define "web#{i}" do |node|
        node.vm.box = "ubuntu/trusty64"
        node.vm.hostname = "web#{i}"
        node.vm.network :private_network, ip: "10.0.15.2#{i}"
        node.vm.network "forwarded_port", guest: 80, host: "808#{i}"
        node.vm.provider "virtualbox" do |vb|
          vb.memory = "256"
        end
        node.vm.provision :shell, path: "puppet-node-config.sh"
    end
  end
end
