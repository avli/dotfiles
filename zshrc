autoload -U compinit
compinit

test -f ~/.zshrc.local && . ~/.zshrc.local

# Without this pyenv cannot compile Python.
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
export CFLAGS="-I/usr/local/opt/openssl@1.1/include"
