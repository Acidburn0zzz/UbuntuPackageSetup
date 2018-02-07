#!/bin/bash
# installs the necessary packages on ubuntu
sudo apt-get update
sudo apt-get install build-essential libssl-dev
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | sh

