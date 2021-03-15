#!/bin/bash
cd ~
git clone "https://github.com/wouter173/dotfiles" ~/.dotfiles

#macos
if [[ `uname` = "Darwin" ]]; then
	#brew installs
	brew install fish
	brew install lsd

	#symlinks
	mkdir ~/.config
	
	ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig
	ln -sf ~/.dotfiles/.config/* ~/.config
	ln -sf ~/.dotfiles/scripts/macos/* "/usr/local/bin"
	
elif [[ `uname` = "Linux" ]]; then
	#apt installs
	apt install fish

	#symlinks
	mkdir ~/.config
	
	ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig
	ln -sf ~/.dotfiles/.config/* ~/.config
	ln -sf ~/.dotfiles/scripts/linux/* "/usr/local/bin"
	
fi


# site installs
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
sh -c "$(curl https://getmic.ro)"
mv ./micro "/usr/local/bin"

chsh -s `which fish`
