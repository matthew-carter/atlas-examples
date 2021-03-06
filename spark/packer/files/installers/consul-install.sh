#!/bin/bash

set -e

CONSUL_VERSION=0.5.2

# install consul
echo "Installing dependencies..."
sudo apt-get install -y unzip

echo "Fetching consul..."
cd /tmp/
wget -q https://dl.bintray.com/mitchellh/consul/${CONSUL_VERSION}_linux_amd64.zip -O consul.zip

echo "Installing consul..."
unzip consul.zip
rm consul.zip
sudo chmod +x consul
sudo mv consul /usr/bin/consul
sudo mkdir -m 777 /etc/consul.d
sudo chmod a+w /var/log
sudo chmod a+w /etc/init/

echo "consul installation complete."
