ZSH=$HOME/.oh-my-zsh
ZSH_THEME="ys"
DISABLE_AUTO_UPDATE="true"
DISABLE_LS_COLORS="true"

plugins=(git brew brew-cask tmux)

source $ZSH/oh-my-zsh.sh

[ -f .zshrc.local ] && source .zshrc.local
