#!/usr/bin/env bash

# install puppet master (https://docs.puppetlabs.com/guides/install_puppet/install_debian_ubuntu.html)
wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb

sudo dpkg -i puppetlabs-release-trusty.deb

apt-get update -y

sudo apt-get install -y puppetmaster-passenger

# vagrant environment nodes
sudo cat >> /etc/hosts <<EOF
10.0.10.10  puppet
10.0.15.21  web1
10.0.15.22  web2
10.0.15.23  web3
10.0.15.24  web4
10.0.15.25  web5
10.0.15.26  web6
10.0.15.27  web7
10.0.15.28  web8
10.0.15.29  web9
EOF

