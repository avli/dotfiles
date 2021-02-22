all: backup deps tmux vim zsh

current_dir = $(shell pwd)

deps:
	brew update
	brew upgrade
	brew tap homebrew/cask-fonts
	cat brew/leaves | xargs brew install
	cat brew/casks | xargs brew install --cask

backup:
	cp -f $(HOME)/.bash_profile $(HOME)/.bash_profile.bak 2>/dev/null || :
	cp -f $(HOME)/.bashrc $(HOME)/.bashrc.bak 2>/dev/null || :
	cp -f $(HOME)/.aliases $(HOME)/.aliases.bak 2>/dev/null || :
	cp -f $(HOME)/.tmux.conf $(HOME)/.tmux.conf.bak 2>/dev/null || :
	cp -f $(HOME)/.vimrc $(HOME)/.vimrc.bak 2>/dev/null || :
	cp -f $(HOME)/.zshrc $(HOME)/.zshrc.bak 2>/dev/null || :

rmbackup:
	rm -f $(HOME)/.bash_profile.bak
	rm -f $(HOME)/.bashrc.bak
	rm -f $(HOME)/.aliases.bak
	rm -f $(HOME)/.tmux.conf.bak
	rm -f $(HOME)/.vimrc.bak
	rm -f $(HOME)/.zshrc.bak

aliases:
	ln -sF $(current_dir)/aliases $(HOME)/.aliases

tmux:
	ln -sF $(current_dir)/tmux.conf $(HOME)/.tmux.conf

vim:
	if [ ! -d ~/.vim/bundle/Vundle.vim ] ; \
	  then \
	  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim ; \
	fi ;
	ln -sF $(current_dir)/vimrc $(HOME)/.vimrc
	vim +PluginInstall +qall

zsh:	aliases
	ln -sF $(current_dir)/zshrc $(HOME)/.zshrc

.PHONY: aliases
