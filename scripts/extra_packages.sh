#!/bin/bash

echo -e "Intalling Fonts"
sleep 1
sudo pacman --noconfirm -S ttf-liberation ttf-bitstream-vera ttf-dejavu ttf-droid ttf-freefont noto-fonts adobe-source-code-pro-fonts ttf-ubuntu-font-family


echo -e "Install Extra Packages"
sleep 1

sudo pacman --noconfirm -S git unzip unrar firefox vlc file-roller jdk-openjdk python python-pip
pip install pip==22.3.1 --break-system-packages



