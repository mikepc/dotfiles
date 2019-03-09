
DOTPATH    := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
CANDIDATES := $(wildcard .??*) bin
EXCLUSIONS := .DS_Store .git .gitmodules Makefile README.md
DOTFILES   := $(filter-out $(EXCLUSIONS), $(CANDIDATES))


all: 

list:
	@$(foreach val, $(DOTFILES), /bin/ls -dF $(val);)

install:
	@$(foreach val, $(DOTFILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)



#	ln -s $(HOME)/.zshrc $(HOME)/dotfiles/.zshrc
#	ln -s $(HOME)/.oh-my-zsh $(HOME)/dotfiles/.oh-my-zsh
#	ln -s $(HOME)/.vim $(HOME)/dotfiles/.vim
#	ln -s $(HOME)/.vimrc $(HOME)/dotfiles/.vim/vimrc
#	ln -s $(HOME)/.tmux $(HOME)/dotfiles/.tmux
#	ln -s $(HOME)/.tmux.conf $(HOME)/dotfiles/.tmux.conf
