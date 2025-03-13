#!/bin/bash

# localectl set the configration for X11 next time you log in while setxkbmap
# is applied to the current session
localectl status
echo '---'
setxkbmap -query

# To configure the keyboard layout try the following:
#sudo localectl set-x11-keymap es pc105
# Logout and login again, if it doesn't work:
#sudo dpkg-reconfigure keyboard-configuration
# Logout and login again, if it doesn't work:
# Add to setxkbmap command in i3 config "-layout es"
