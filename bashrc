[ -f ~/.aliases ] && source ~/.aliases
[ -f ~/.bashrc.local ] && source ~/.bashrc.local

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/texlive/2015/bin/x86_64-darwin:$PATH

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# I used http://bashrcgenerator.com/ to construct it :)
export PS1="\[\033[38;5;6m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;2m\]\h:\[$(tput sgr0)\]\[\033[38;5;11m\]\w\[$(tput sgr0)\]\[\033[38;5;7m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

# Colors
export COLORFGBG="7;0"
export LSCOLORS=Gxfxcxdxbxegedabagacad
