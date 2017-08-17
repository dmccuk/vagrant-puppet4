Vagrant Puppet Master 4.0
==========================
This is the configuration file for puppet master v4.0 in Vagrant.

Credits:
--------
 * When I was learning Vagrant and puppet I did alot of research on the internet and found some useful code which
   I modified to suit my needs. I'd like to thanks garystafford/multi-vagrant-puppet-vms for his help.

Setup:
--------
 1. Make you way to the directory you want to clone this code into.
 2. Run this command: git clone https://github.com/dmccuk/vagrant-puppet4.git
 3. cd into the vagrant-puppet4 directory
 4. Run the vagrant command : vagrant up
 5. (For Windows) Setup the path to ssh running this command: set PATH=%PATH%;C:\Program Files\Git\usr\bin
 6. SSH into your new puppet master: vagrant ssh

Manual steps:
--------
Once your puppet master is running, on the puppet master do the following:

 1. Check the puppet master is installed:
     sudo systemctl status puppetserver
 2. Start the puppet master:
     sudo systemctl start puppetserver
 3. Enable the puppet master to start @ boot time:
     sudo systemctl enable puppetserver
 4. Now open up the FireWall to allow puppet agents to contact the puppet master:
     sudo ufw allow 8140

---
