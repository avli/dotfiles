autoload -U compinit
compinit

export PS1="🤔 %F{green}%n %F{yellow}in %F{blue}%1d %F{magenta}$ %f"

test -f ~/.zshrc.local && . ~/.zshrc.local
test -f ~/.aliases && . ~/.aliases

eval "$(pyenv init -)"

# Without this pyenv cannot compile Python.
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
export CFLAGS="-I/usr/local/opt/openssl@1.1/include"

