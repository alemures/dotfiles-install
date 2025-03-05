#!/bin/bash

DOTFILES_FOLDER="$HOME/dotfiles"
BACKUP_FOLDER="dotfiles-backup"

if [ -d $DOTFILES_FOLDER ]; then
  echo "Dotfiles already installed."
  exit 0
fi;

git clone --bare https://github.com/alemures/dotfiles.git $DOTFILES_FOLDER
function config {
   /usr/bin/git --git-dir=$DOTFILES_FOLDER/ --work-tree=$HOME $@
}
config checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
else
  echo "Backing up pre-existing dot files in $BACKUP_FOLDER.";
  config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs dirname | xargs -I{} mkdir -p $BACKUP_FOLDER/{}
  config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv $HOME/{} $BACKUP_FOLDER/{}
fi;
config checkout
config config status.showUntrackedFiles no

config submodule update --init --jobs=8 --recommend-shallow

# Build scripts in typescript
cd $HOME/scripts
$NVM_BIN/npm install
$NVM_BIN/npm run build

