## dotfiles installation script

This repo is intended to be cloned in a fresh new install of debian, refer to [debian-setup.md](https://gist.github.com/alemures/bb9625bb909b7ddf45c03e766359010e) gists to do the initials steps up to the section [Install firmware and cpu microcode](https://gist.github.com/alemures/bb9625bb909b7ddf45c03e766359010e#install-firmware-and-cpu-microcode). Once the base installation is ready and configured, install git, clone this repo and run the scripts in order:

```bash
sudo apt install git
# clone this repo
./1-install-software.sh
exit
# login again
./2-setup-dotfiles.sh
exit
# login one more time to see i3 and you are done!
```

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
