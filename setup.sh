#!/bin/bash

git clone "https://github.com/wouter173/dotfiles" ~/.dotfiles

#macos
if [[ `uname` = "Darwin" ]]; then
	#brew installs
	brew install fish
	brew install lsd

	#symlinks
	ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
	ln -s ~/.dotfiles/.config/* ~/.config
	ln -s ~/.dotfiles/scripts/macos/* "/usr/local/bin"
	
elif [[ `uname` = "Linux" ]]; then
	#apt installs
	apt install fish

	#symlinks
	ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
	ln -s ~/.dotfiles/.config/* ~/.config
	ln -s ~/.dotfiles/scripts/linux/* "/usr/local/bin"
	
fi


# site installs
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
sh -c "$(curl https://getmic.ro)"

chsh -s `which fish`
