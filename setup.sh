# symlink
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.zsh ~/.zsh

ln -s ~/.dotfiles/.config/* ~/.config
ln -s ~/.dotfiles/scripts/* "/usr/local/bin"

# install starship
sh -c "$(curl -fsSL https://starship.rs/install.sh)"

#install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#install micro
curl https://getmic.ro | bash
