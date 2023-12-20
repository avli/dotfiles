test -f ~/.aliases && source ~/.aliases
test -f ~/.zshrc.local && source ~/.zshrc.local

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export PATH="$HOME/bin:$HOME/ext/bin:/usr/local/sbin:$PATH"

eval "$(pyenv init -)"

export EDITOR="vim"

export SDKMAN_DIR=$(brew --prefix sdkman-cli)/libexec
[[ -s "${SDKMAN_DIR}/bin/sdkman-init.sh" ]] && source "${SDKMAN_DIR}/bin/sdkman-init.sh"

export CFLAGS="-I$(xcrun --show-sdk-path)/usr/include"
export LDFLAGS="-L$(xcrun --show-sdk-path)/usr/lib"

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
