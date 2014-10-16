#!/usr/local/bin/bash

sudo pkg install mongodb
echo 'mongod_enable="YES"' >> /etc/rc.conf
# Restart mongodb
sudo service mongod stop
sudo service mongod start 
