eval (/opt/homebrew/bin/brew shellenv)
starship init fish | source

export PATH="$HOME/.cargo/bin:$PATH"
export PF_COL1="6" PF_ALIGN="3" PF_COL3="6" PF_COL4="1"
source ~/.dotfiles/misc/aliases.sh

clear 
pfetch
