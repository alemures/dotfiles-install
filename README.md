## dotfiles installation script
This repo is intended to be cloned in a fresh new install of debian,refer to [debian-setup.md](https://gist.github.com/alemures/bb9625bb909b7ddf45c03e766359010e) gists to do the initials steps. Once the base installation is ready and configured, install the required packages.

#### Required Packages
```
# Window Manager
sudo apt install xorg i3
# Fonts and Icons
sudo apt install fonts-ubuntu fonts-font-awesome
# General Utils
sudo apt install alsa-utils hsetroot git
# Software
sudo apt install ranger
```

#### Optional Packages
```
sudo apt install vim psmisc htop
```

Finally run the script `install.sh`.

see: https://www.atlassian.com/git/tutorials/dotfiles
