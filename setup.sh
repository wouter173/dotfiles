#!/bin/sh

#install fish
brew install fish

# install starship
sh -c "$(curl -fsSL https://starship.rs/install.sh)"

# symlink
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.config/* ~/.config
ln -s ~/.dotfiles/scripts/* "/usr/local/bin"

#install micro
curl https://getmic.ro | bash
