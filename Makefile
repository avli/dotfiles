all: backup deps tmux vim zsh

current_dir = $(shell pwd)

deps:
	brew update
	brew upgrade
	brew tap homebrew/cask-fonts
	cat brew/leaves | xargs brew install
	cat brew/casks | xargs brew install --cask

backup:
	cp -f $(HOME)/.aliases $(HOME)/.aliases.bak 2>/dev/null || :
	cp -f $(HOME)/.tmux.conf $(HOME)/.tmux.conf.bak 2>/dev/null || :
	cp -f $(HOME)/.vimrc $(HOME)/.vimrc.bak 2>/dev/null || :
	cp -f $(HOME)/.zshrc $(HOME)/.zshrc.bak 2>/dev/null || :
	cp -rf $(HOME)/.emacs.d $(HOME)/.emacs.d.bak 2>/dev/null || :
	cp -f $(HOME)/.aspell.en.prepl $(HOME)/.aspell.en.prepl.bak 2>/dev/null || :
	cp -f $(HOME)/.aspell.en.pws $(HOME)/.aspell.en.pws.bak 2>/dev/null || :
	cp -f $(HOME)/.aspell.conf $(HOME)/.aspell.conf 2>/dev/null || :

rmbackup:
	rm -f $(HOME)/.aliases.bak
	rm -f $(HOME)/.tmux.conf.bak
	rm -f $(HOME)/.vimrc.bak
	rm -f $(HOME)/.zshrc.bak
	rm -rf $(HOME)/.emacs.d.bak
	rm -f $(HOME)/.aspell.en.prepl.bak
	rm -f $(HOME)/.aspell.en.pws.bak
	rm -f $(HOME)/.aspell.conf

aliases:
	ln -sF $(current_dir)/aliases $(HOME)/.aliases

aspell:
	ln -sF $(current_dir)/aspell.en.prepl $(HOME)/.aspell.en.prepl
	ln -sF $(current_dir)/aspell.en.pws $(HOME)/.aspell.en.pws
	echo "dict-dir $(HOME)/.emacs.d/dictionary" > ~/.aspell.conf

emacs:
	mkdir -p $(HOME)/.emacs.d
	ln -sF $(current_dir)/init.el $(HOME)/.emacs.d/init.el
	(cd $(HOME)/.emacs.d && git clone https://github.com/Emacs-Kotlin-Mode-Maintainers/kotlin-mode.git)
	(cd $(HOME)/.emacs.d && git clone https://github.com/jrblevin/markdown-mode.git)

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

.PHONY: deps backup rmbackup aliases emacs tmux vim
