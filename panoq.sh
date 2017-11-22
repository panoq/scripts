#!/bin/bash

#bash panoq.sh

sudo timedatectl set-timezone Europe/Helsinki
setxkbmap fi
sudo apt-get update
sudo apt-get install -y git tree puppet firefox

git clone https://github.com/panoq/drdes
sudo mv /home/xubuntu/drdes/ /etc/puppet/modules/drdes

sudo puppet apply -e 'class {"drdes":}'
