#!/usr/bin/env bash

# Provision each node with puppet
sudo apt-get update
sudo apt-get install puppet

# vagrant environment nodes
sudo echo "10.0.15.10  puppet" >> /etc/hosts

#sudo puppet agent --no-daemonize --verbose
