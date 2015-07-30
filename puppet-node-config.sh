#!/usr/bin/env bash

# Install puppet in every node
sudo apt-get update
sudo apt-get install puppet

# puppet master
sudo echo "10.0.15.10 puppet" >> /etc/hosts
