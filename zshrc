test -f ~/.aliases && source ~/.aliases
test -f ~/.zshrc.local && source ~/.zshrc.local

eval "$(pyenv init -)"

export EDITOR="idea -e"

export SDKMAN_DIR=$(brew --prefix sdkman-cli)/libexec
[[ -s "${SDKMAN_DIR}/bin/sdkman-init.sh" ]] && source "${SDKMAN_DIR}/bin/sdkman-init.sh"