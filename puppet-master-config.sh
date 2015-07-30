#!/usr/bin/env bash

# install puppet master (https://docs.puppetlabs.com/guides/install_puppet/install_debian_ubuntu.html)
wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb
sudo dpkg -i puppetlabs-release-trusty.deb
apt-get update -y
sudo apt-get install -y puppetmaster-passenger

# Create lamp manifest dir in the puppet msater
sudo mkdir -p /etc/puppet/modules/lamp/manifests

# Copy the lamp manifest to the puppet mastes
sudo cp /vagrant/modules/lamp/manifests/init.pp /etc/puppet/modules/lamp/manifests/

# Add our lamp module to the main manifest
sudo cp /vagrant/manifests/main/site.pp /etc/puppet/manifests/

# When web nodes hit the puppet master for cert name and stuff
sudo cat >> /etc/puppet/puppet.conf <<EOF
certname=puppet
dns_alt_names=puppet
EOF


# vagrant environment nodes
sudo cat >> /etc/hosts <<EOF
10.0.10.10  puppet
10.0.15.20  web0
10.0.15.21  web1
10.0.15.22  web2
EOF

