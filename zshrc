export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="kolo"
DISABLE_AUTO_UPDATE="true"

DEFAULT_USER=`whoami`

DISABLE_AUTO_TITLE="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mate'
fi

if [ -f $HOME/.aliases ]; then
    source $HOME/.aliases
fi

if [ -f $HOME/.zshrc.local ]; then
    source $HOME/.zshrc.local
fi
