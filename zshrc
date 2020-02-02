ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
DISABLE_AUTO_UPDATE="true"

DEFAULT_USER=`whoami`

DISABLE_AUTO_TITLE="true"

plugins=(git pip pyenv tmux)

source $ZSH/oh-my-zsh.sh

if [ -f $HOME/.aliases ]; then
    source $HOME/.aliases
fi

if [ -f $HOME/.zshrc.local ]; then
    source $HOME/.zshrc.local
fi
