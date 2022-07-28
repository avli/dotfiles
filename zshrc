export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
DISABLE_AUTO_UPDATE="true"

DEFAULT_USER=`whoami`

DISABLE_AUTO_TITLE="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='idea -e'
fi

unsetopt beep

if [ -f $HOME/.aliases ]; then
    source $HOME/.aliases
fi

if [ -f $HOME/.zshrc.local ]; then
    source $HOME/.zshrc.local
fi

eval "$(pyenv init -)"

source "$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
