
GREEN := $(shell tput -Txterm setaf 2)

setup: install-homebrew link-git link-zsh link-vim ## Runs the configuration setup

link-git: ## Creates symlink for gitconfig
	@rm ~/.gitconfig || true
	@ln -s $${HOME}/myconfig/git/gitconfig ~/.gitconfig
	@echo "${GREEN}Git configuration is successful."

link-zsh: ## Creates symlink for zshrc
	@rm ~/.zshrc || true
	@ln -s $${HOME}/myconfig/zsh/zshrc ~/.zshrc
	@echo "${GREEN}Zsh configuration is successful."

link-vim: ## Creates symlink for vim
	@git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	@ln -s $${HOME}/myconfig/vim/vimrc ~/.vimrc
	@vim +PluginInstall +qall
	@echo "${GREEN}Vim configuration is successful."

install-homebrew: ## Installs homebrew bundle
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	cd homebrew && brew bundle
	mkdir ~/.nvm

help:
	@grep -E '^[[:alnum:][:punct:]]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
