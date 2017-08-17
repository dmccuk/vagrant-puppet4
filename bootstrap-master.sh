#!/bin/sh

# Run on VM to bootstrap Puppet Master 4.0 server

    # Install Puppet Master
    wget https://apt.puppetlabs.com/puppetlabs-release-pc1-xenial.deb
    sudo dpkg -i puppetlabs-release-pc1-xenial.deb
    sudo apt-get update -yq
    sudo apt-get upgrade -yq
    sudo apt-get install -yq puppetserver

    # setup autosign for our nodes
    cat > /etc/puppetlabs/puppet <<EOF
    *.example.com
    EOF

    # open the FW port 8140
    sudo ufw allow 8140

    # start and enable puppet
    sudo systemctl start puppetserver
    sudo systemctl enable puppetserver 
