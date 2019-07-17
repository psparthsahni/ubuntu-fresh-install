#! /bin/sh

# Author: Parth Sahni
# Description: Things to do after a fresh install of Ubuntu.

# Check for updates and update them
sudo apt update && sudo apt upgrade -y

# Downloading Google Chrome
sudo apt install gdebi-core
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo gdebi google-chrome-stable_current_amd64.deb

# Install Chrome Gnome shell and Tweaks tool
sudo apt install chrome-gnome-shell -y
sudo apt install gnome-tweak-tool -y

# Installing wget and git
sudo apt install wget git -y

# Installing VLC
sudo apt-get install vlc -y

# Installing Gimp (Baselevel Photoshop)
sudo apt-get install gimp -y

# Installing support for all media files
sudo apt install ubuntu-restricted-extras -y

# Installing archive applications
sudo apt-get install unrar zip unzip p7zip-full p7zip-rar rar -y

# Installing laptop tools
sudo apt-get install laptop-mode-tools -y
