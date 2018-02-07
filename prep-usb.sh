#!/bin/bash
# installs ubuntu to usb stick (assuming start from a ubuntu system)
# at present - using ubuntu 16.04 LTS
# https://help.ubuntu.com/community/mkusb
sudo add-apt-repository universe
sudo add-apt-repository ppa:mkusb/ppa
sudo apt-get update
sudo apt-get install mkusb mkusb-nox usb-pack-efi pv
wget http://releases.ubuntu.com/16.04.3/ubuntu-16.04.3-desktop-amd64.iso

echo "select gpt (not msdos), usb-pack-efi (not iso)"
sudo -H mkusb-11 ubuntu-16.04.3-desktop-amd64.iso -p
