#! /bin/sh

# Author: Parth Sahni
# Description: Things to do after a fresh install of Ubuntu.

# Checking for updates and updating them
echo  Checking for updates and updating them
sudo apt update && sudo apt upgrade -y

# Downloading brave browser
echo Downloading brave browser
sudo apt install apt-transport-https curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser -y

# Installing chrome gnome shell and tweaks tool
echo Installing Chrome Gnome shell and Tweaks tool
sudo apt install chrome-gnome-shell -y
sudo apt install gnome-tweak-tool -y

# Installing wget and git
echo Installing wget and git
sudo apt install wget git -y

# Installing VLC
echo Installing VLC
sudo apt-get install vlc -y

# Installing support for all media files
echo Installing support for all media files
sudo apt install ubuntu-restricted-extras -y

# Installing archive applications
echo Installing archive applications
sudo apt-get install unrar zip unzip p7zip-full p7zip-rar rar -y

# Installing laptop tools
echo Installing laptop tools
sudo apt-get install laptop-mode-tools -y

# Installing sublime text
echo Installing sublime text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text -y
