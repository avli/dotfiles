[ -f ~/.aliases ] && source ~/.aliases

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
    GIT_PROMPT_THEME=Default
    source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi

export PATH=$HOME/anaconda3/bin:/usr/local/sbin:/usr/local/texlive/2015/bin/x86_64-darwin:$PATH

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

#export CLICOLOR=1
#export LSCOLORS=GxFxCxDxBxegedabagaced
#export COLORFGBG="7;0"

source `which virtualenvwrapper_lazy.sh`
