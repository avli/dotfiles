autoload -Uz compinit
compinit -i

export PS1="🤔 %F{green}%n %F{yellow}in %F{blue}%1d %F{magenta}$ %f"

test -f ~/.zshrc.local && . ~/.zshrc.local
test -f ~/.aliases && . ~/.aliases

eval "$(pyenv init -)"

