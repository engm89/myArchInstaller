#!/bin/bash

echo -e "PAru - AUR helper"
sleep 1
sudo pacman -S --needed base-devel git

cd /tmp
git clone https://aur.archlinux.org/paru.git 
cd paru
makepkg -si
