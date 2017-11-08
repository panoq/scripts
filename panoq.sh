#!/bin/bash

#first run chmod +x /home/xubuntu/panoq.sh

sudo timedatectl set-timezone "Europe/Helsinki"
setxkbmap fi
sudo apt-get update
sudo apt-get install -y git tree puppet

git clone https://github.com/panoq/lkh
sudo cp -r /home/xubuntu/lkh/modules/sshd /etc/puppet/modules/sshd

sudo puppet apply -e 'class {"sshd":}'

sudo service sshd status
