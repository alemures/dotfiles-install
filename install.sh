#!/bin/bash

DOTFILES_FOLDER="dotfiles"
BACKUP_FOLDER="dotfiles-backup"

git clone --bare https://github.com/alemures/dotfiles.git $HOME/$DOTFILES_FOLDER
function config {
   /usr/bin/git --git-dir=$HOME/$DOTFILES_FOLDER/ --work-tree=$HOME $@
}
config checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
else
  echo "Backing up pre-existing dot files in $BACKUP_FOLDER.";
  config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs dirname | xargs -I{} mkdir -p $BACKUP_FOLDER/{}
  config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} $BACKUP_FOLDER/{}
fi;
config checkout
config config status.showUntrackedFiles no
