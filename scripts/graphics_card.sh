#!/bin/bash

echo -e "Graphics Support"
sleep 1

echo -e "installing X11 and NVIDIA"
sleep 1
pacman --noconfirm -S xorg-server xorg-xinit mesa mesa-demos
read -p "Select the graphics card (1) NVIDIA (2) VirtualBox: " graphicCard

  case "$graphicCard" in
    '1')
      sudo pacman --noconfirm -S nvidia nvidia-utils
          ;;
    '2')
      sudo pacman --noconfirm -S virtualbox-guest-utils
        ;;
      *)
        ;;
  esac
