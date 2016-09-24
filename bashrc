[ -f ~/.aliases ] && source ~/.aliases

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

export PATH=$HOME/anaconda3/bin:/usr/local/sbin:/usr/local/texlive/2015/bin/x86_64-darwin:$PATH

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

source `which virtualenvwrapper_lazy.sh`
