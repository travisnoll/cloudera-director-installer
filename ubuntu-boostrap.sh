#!/bin/sh
sudo apt-get -y install default-jdk
cd /etc/apt/sources.list.d/
sudo curl "http://archive.cloudera.com/director/ubuntu/trusty/amd64/director/cloudera-director.list" -O
sudo curl -s \
"http://archive.cloudera.com/director/ubuntu/trusty/amd64/director/archive.key" | sudo apt-key add -
sudo apt-get update
sudo apt-get -y install cloudera-director-server cloudera-director-client
sudo apt-get -y upgrade
sudo reboot
