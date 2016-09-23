all: backup deps bash tmux vim

current_dir = $(shell pwd)

deps:
	brew install --override-system-vi vim
	brew install bash-git-prompt

backup:
	cp -f $(HOME)/.bash_profile $(HOME)/.bash_profile.bak 2>/dev/null || :
	cp -f $(HOME)/.bashrc $(HOME)/.bashrc.bak 2>/dev/null || :
	cp -f $(HOME)/.aliases $(HOME)/.aliases.bak 2>/dev/null || :
	cp -f $(HOME)/.tmux.conf $(HOME)/.tmux.conf.bak 2>/dev/null || :
	cp -f $(HOME)/.vimrc $(HOME)/.vimrc.bak 2>/dev/null || :
	cp -f $(HOME)/.gvimrc $(HOME)/.gvimrc.bak 2>/dev/null || :
	cp -f $(HOME)/.zshrc $(HOME)/.zshrc.bak 2>/dev/null || :

bash:
	ln -sF $(current_dir)/bash_profile $(HOME)/.bash_profile
	ln -sF $(current_dir)/bashrc $(HOME)/.bashrc
	ln -sF $(current_dir)/aliases $(HOME)/.aliases

tmux:
	ln -sF $(current_dir)/tmux.conf $(HOME)/.tmux.conf

vim:
	if [ ! -d ~/.vim/bundle/Vundle.vim ] ; \
	  then \
	  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim ; \
	fi ;
	ln -sF $(current_dir)/vimrc $(HOME)/.vimrc
	ln -sF $(current_dir)/gvimrc $(HOME)/.gvimrc
	vim +PluginInstall +qall

zsh:
	ln -sF $(current_dir)/zshrc $(HOME)/.zshrc
