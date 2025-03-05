## dotfiles installation script

This repo is intended to be cloned in a fresh new install of debian,refer to [debian-setup.md](https://gist.github.com/alemures/bb9625bb909b7ddf45c03e766359010e) gists to do the initials steps. Once the base installation is ready and configured, install the required packages.

see: https://www.atlassian.com/git/tutorials/dotfiles

#### Required Packages

```
# Window Manager and terminal
sudo apt install xorg i3 rxvt-unicode
# Themes gtk and qt
sudo apt install gnome-themes-extra adwaita-icon-theme adwaita-qt qt5ct
# Fonts and Icons
sudo apt install fonts-ubuntu fonts-font-awesome
# General Utils
sudo apt install alsa-utils hsetroot git dunst libnotify-bin scrot xclip lxpolkit
# Software
sudo apt install vim-gtk3 ranger curl
```

#### Optional Packages

```
sudo apt install psmisc htop
```

Install nvm and nodejs LTS since some scripts are written in nodejs see [nvm install](https://github.com/nvm-sh/nvm#install--update-script)

Finally run the script `install.sh`.

### Fixing keybindings in macOS under VirtualBox

Under _keyboard settings / Modifier Keys..._ set the following remapings:

- Caps Lock -> Control
- Control -> Command
- Option -> Option
- Command -> Control

Then after the dotfiles installation is done, do the following changes into the i3 config file:

```diff
-exec --no-startup-id setxkbmap -option caps:super
+exec --no-startup-id setxkbmap -option caps:ctrl_modifier
+exec --no-startup-id xmodmap $HOME/.Xmodmap
```

Create the `$HOME/.Xmodmap` file with the following content:

```
clear control
clear mod4
add mod4 = Control_R
add control = Super_L
```
