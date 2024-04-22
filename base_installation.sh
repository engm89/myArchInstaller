#!/bin/bash
#
# Check if the current user os root
if ! [ $(id -u) = 0 ]; then
  echo "This script must be run as sudo or root, try again..."
  exit 1
fi

pacman --noconfirm -S vim reflector git

echo -e "Update the mirror list"
reflector --latest 15 --age 2 --fastest 20 --protocol https --sort rate --save /etc/pacman.d/mirrorlist

echo -e "Installing Packages for DualBoot and Bluetooth support"
sleep 1
  pacman --noconfirm -S grub bluez bluez-utils bluedevil bash-completion ntfs-3g sof-firmware

echo -e "Desktop Environments"
  sleep 1
read -p "choose a desktop environments ( "gnome" "gnome-minimal" "kde" "kde-minimal" "xfce" ): " desktop
     case "$desktop" in
         'gnome')
             pacman --noconfirm -S gnome gnome-extra gnome-tweaks
             ;;
         "gnome-minimal")
            pacman --noconfirm -S gnome-control-center gnome-keyring gnome-shell gnome-terminal gnome-backgrounds gnome-tweaks gnome-calculator gnome-clocks gnome-disk-utility gnome-system-monitor gnome-text-editor gnome-software gnome-calendar gnome-calculator evince nautilus gnome-photos  
            ;;
         "kde")
            pacman --noconfirm -S plasma kde-applications    
            ;;
         "kde-minimal")
            pacman --noconfirm -S plasma-desktop plasma-nn plasma-pa dolphin plasma-systemmonitor kdegraphics-thumbnailers okular konsole kde-plasma-addons ark kcalc
            ;;
         "xfce")
            pacman --noconfirm -S xfce4 xfce4-goodies network-manager-applet 
            ;;
         *)
            ;;
    esac

echo -e "Session Managers"
read -p "Select your favorite session manager ("gdm" "sddm"  "lightdm"): " sessionMexianager

     case "$sessionManager" in
       'gdm')
            pacman --noconfirm -S gdm
            systemctl disable sddm || true
            systemctl disable lightdm || true
            systemctl enable gdm.service || true
            systemctl enable bluetooth || true
            systemctl enable NetworkManager.service
            ;;
       'sddm')
            pacman --noconfirm -S sddm sddm-kcm
            systemctl disable gdm.service || true
            systemctl disable lightdm || true
            systemctl enable sddm || true
            systemctl enable bluetooth || true
            systemctl enable NetworkManager.service
            ;;
         'lightdm')
            pacman --noconfirm -S lightdm lightdm-gtk-greeter
            systemctl disable gdm.service || true
            systemctl disable sddm || true
            systemctl enable lightdm || true
            systemctl enable bluetooth || true
            systemctl enable NetworkManager.service
            ;;
         *)
            ;;
    esac











