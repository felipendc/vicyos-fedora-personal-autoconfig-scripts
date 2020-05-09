#!/bin/bash

# github.com/felipendc

# First thing first: 
# Open SOFTWARE app and Go to "Software and Repo MENU"
# Enable the repos that will suit my needs! (Google-Chrome/NVIDIA/Linux Firmware) and others! 
# Disable the AUTOMATIC UPDATES on "UPDATES PREFERENCES MENU"


# To update your Fedora: 
sudo dnf check-update -y
sudo dnf upgrade --refresh -y


# Install the dnf-plugin-system-upgrade package if it is not currently installed:
sudo dnf install dnf-plugin-system-upgrade -y

# To install NVIDIA drivers:
sudo dnf install nvidia-driver nvidia-settings -y

# Gree With Envy:
sudo dnf install gwe -y

# Inkscape:
sudo dnf install inkscape -y

# Install Google Chrome: (Don't forget to enable the Google Chrome Repo on Software Settings)
sudo dnf install google-chrome-stable -y

# GNOME Tweak Tool:
sudo dnf install gnome-tweaks -y

######### Set my favorite picture as background wallpaper:
cd vicyos-background-wallpaper && 
sudo cp -r *.jpg /usr/share/backgrounds/fedora-workstation && 
gsettings set org.gnome.desktop.background picture-uri "/usr/share/backgrounds/fedora-workstation/74880.jpg" && 
cd ../

# Visual Studio Code:
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf check-update -y && sudo dnf install code -y


# Auto Apply Gnome Tweak Tool configs: (Will keep getting Rolling updates!) (If anything goes wrong, it'll break the System!)

#The files altered by gnome-tweak-tool are saved at: ~/.config/dconf/user 
#(this is the dconf database, a binary file where most user settings are #stored)
#and various other configuration files under ~/.config (these are all text files)

cd vicyos-fedora32-dconf &&
sudo rm -r ~/.config/dconf/user && cp -r user* ~/.config/dconf/ && 
cd ../












