alias la="ls -a"
alias ll="ls -l"
alias lla="ll -a"
alias :q="exit"
alias :q!="exit"
alias :e="vim"
alias vi=vim

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export PATH="$HOME/.local/bin:/usr/local/sbin:$PATH"

export CFLAGS="-I$(xcrun --show-sdk-path)/usr/include"
export LDFLAGS="-L$(xcrun --show-sdk-path)/usr/lib"

autoload -U compinit
compinit

test -f ~/.zshrc.local && source ~/.zshrc.local
