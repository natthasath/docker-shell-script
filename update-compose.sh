#!/bin/bash

# uninstall docker-compose
apt-get remove docker-compose
rm /usr/bin/docker-compose

# add latest version
VERSION=$(curl --silent https://api.github.com/repos/docker/compose/releases/latest | grep -Po '"tag_name": "\K.*\d')

# add destination
DESTINATION=/usr/bin/docker-compose

# download
curl -L https://github.com/docker/compose/releases/download/${VERSION}/docker-compose-$(uname -s)-$(uname -m) -o $DESTINATION

# permission
chmod 755 $DESTINATION