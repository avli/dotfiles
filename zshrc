ZSH=$HOME/.oh-my-zsh
ZSH_THEME="ys"
DISABLE_AUTO_UPDATE="true"
DISABLE_LS_COLORS="true"

plugins=(git brew brew-cask tmux)

source $ZSH/oh-my-zsh.sh

if [ -f $HOME/.aliases ]; then
    source $HOME/.aliases
fi

if [ -f $HOME/.zshrc.local ]; then
    source $HOME/.zshrc.local
fi
