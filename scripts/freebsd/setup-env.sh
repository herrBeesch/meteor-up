#!/usr/local/bin/bash

sudo mkdir -p ~/<%= appName %>/
sudo mkdir -p ~/<%= appName %>/config
sudo mkdir -p ~/<%= appName %>/tmp

sudo chown -R ${USER} ~/<%= appName %> 
sudo mkdir -p /usr/local/etc/init
sudo chown ${USER} /usr/local/etc/init

sudo npm install -g forever userdown wait-for-mongo node-gyp

# Creating a non-privileged user
sudo pw user add -n meteoruser -m -s /usr/local/bin/bash
