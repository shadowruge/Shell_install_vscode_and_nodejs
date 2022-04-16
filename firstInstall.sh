#!/bin/bash
echo "Installing vscode and nodejs"
#Update the system
echo "\/\/\/\/\/\/\/\/\/"
#
echo ""
echo "Updating the system"
sudo apt update && sudo apt dist-upgrade -y
echo ""
echo "\/\/\/\/\/\/\/\/\/"
#
echo ""
#Install the necessary packages
echo "Installing the necessary packages"
sudo apt install -y build-essential libssl-dev libffi-dev apt-transport-https ca-certificates curl software-properties-common
#
echo ""
echo "\/\/\/\/\/\/\/\/\/"
#Install vscode
#
echo ""
echo "Pakges essential for vscode"
#
sudo apt install wget gpg curl -y
#
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
#
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
#
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
#clean up 
echo "Clean cache"
sudo apt clean
#
rm -f packages.microsoft.gpg
#
echo "Installing vscode"
#
echo ""
sudo apt install code -y
echo "\/\/\/\/\/\/\/\/\/"
echo ""

#install nodejs and npm LTS version
echo "Installing nodejs and npm LTS version"
curl -fsSL https://deb.nodesource.com/setup_lts.x | bash -
echo "Using Debian, as root"
sudo su && apt install -y nodejs 
echo "\/\/\/\/\/\/\/\/\/"
echo ""
