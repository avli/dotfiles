test -f ~/.aliases && source ~/.aliases
test -f ~/.bashrc.local && source ~/.bashrc.local

eval "$(pyenv init -)"

export EDITOR="idea -e"
bind 'set bell-style off'
