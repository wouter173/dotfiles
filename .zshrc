export ZSH="/Users/wouter/.oh-my-zsh"

ZSH_THEME="af-magic"
plugins=(git docker)

source $ZSH/oh-my-zsh.sh

export EDITOR='micro'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

source ~/.dotfiles/misc/aliases.sh

eval "$(starship init zsh)"
clear && afetch
