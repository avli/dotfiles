alias la="ls -a"
alias ll="ls -l"
alias lla="ll -a"
alias :q="exit"
alias :q!="exit"
alias :e="vim"
alias vi=vim
alias idea="idea -e"

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export PATH="$HOME/.local/bin:/usr/local/sbin:$PATH"

eval "$(pyenv init -)"

export SDKMAN_DIR=$(brew --prefix sdkman-cli)/libexec
[[ -s "${SDKMAN_DIR}/bin/sdkman-init.sh" ]] && source "${SDKMAN_DIR}/bin/sdkman-init.sh"

export CFLAGS="-I$(xcrun --show-sdk-path)/usr/include"
export LDFLAGS="-L$(xcrun --show-sdk-path)/usr/lib"

test -f ~/.zshrc.local && source ~/.zshrc.local
