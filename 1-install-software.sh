#!/bin/bash

# Window Manager and terminal
sudo apt install -y xorg i3 rxvt-unicode
# Themes gtk and qt
sudo apt install -y gnome-themes-extra adwaita-icon-theme adwaita-qt qt5ct
# Fonts and Icons
sudo apt install -y fonts-ubuntu fonts-font-awesome
# General Utils
sudo apt install -y alsa-utils hsetroot dunst libnotify-bin scrot xclip lxpolkit lxappearance lxrandr
# Software
sudo apt install -y vim-gtk3 ranger curl

# Additional packages
sudo apt install -y psmisc htop

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
