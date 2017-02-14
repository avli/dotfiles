[ -f ~/.aliases ] && source ~/.aliases
[ -f ~/.bashrc.local ] && source ~/.bashrc.local

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/texlive/2015/bin/x86_64-darwin:$PATH

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
