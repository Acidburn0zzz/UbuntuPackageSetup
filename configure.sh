#!/bin/bash
# installs the necessary packages on ubuntu
sudo apt-get update
sudo apt-get install build-essential libssl-dev curl software-properties-common
sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get install ethereum

# npm, node
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | sh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install 8.7.0
npm install --save web3@0.20.4

# contracts
git clone https://github.com/RightMesh/TokenGeneratingContracts
cd TokenGeneratingContracts/rightmesh
npm install
