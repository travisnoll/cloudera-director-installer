#!/bin/sh
apt-get -y install default-jdk
cd /etc/apt/sources.list.d/
curl "http://archive.cloudera.com/director/ubuntu/trusty/amd64/director/cloudera-director.list" -O
curl -s \
"http://archive.cloudera.com/director/ubuntu/trusty/amd64/director/archive.key" | apt-key add -
apt-get update
apt-get -y install cloudera-director-server cloudera-director-client
apt-get -y upgrade
reboot
