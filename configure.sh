#!/bin/bash
# installs the necessary packages on ubuntu
sudo apt-get update
sudo apt-get install build-essential libssl-dev curl software-properties-common
sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get install ethereum

# npm, node
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | sh

