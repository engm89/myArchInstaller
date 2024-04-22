#!/bin/bash

#unzip ./terminal_color.zip
mkdir -p /tmp/terminal_color
unzip scripts/terminal_color.zip -d /tmp/terminal_color
sudo cp -nf /tmp/terminal_color/bash.bashrc /etc/bash.bashrc
sudo cp -nf /tmp/terminal_color/DIR_COLORS /etc/
sudo cp -nf /tmp/terminal_color/.bashrc ~/.bashrc
