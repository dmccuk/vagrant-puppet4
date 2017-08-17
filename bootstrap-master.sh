#!/bin/bash

# Run on VM to bootstrap Puppet Master 4.0 server

    # Install Puppet Master
    wget https://apt.puppetlabs.com/puppetlabs-release-pc1-xenial.deb
    sudo dpkg -i puppetlabs-release-pc1-xenial.deb
    sudo apt-get update -yq
    sudo apt-get upgrade -yq
    sudo apt-get install -yq puppetserver

    # setup autosign for our nodes
    echo "*.example.com" | sudo tee /etc/puppetlabs/puppet/autosign.conf 

    # open the FW port 8140
    sudo ufw allow 8140

    # start and enable puppet
    sudo systemctl start puppetserver
    sudo systemctl enable puppetserver 
    sudo systemctl status puppetserver
    exit 0
