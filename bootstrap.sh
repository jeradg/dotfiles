#!/bin/bash

export JERADG_DOTFILES_PATH="$(pwd)"

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

mv ~/.zshrc ~/.zshrc.default-oh-my-zsh

# link dotfiles
ln -s "$(JERADG_DOTFILES_PATH)/.SpaceVim.d" ~/.SpaceVim.d
ln -s "$(JERADG_DOTFILES_PATH)/.tmux/.tmux.conf" ~/.tmux.conf
ln -s "$(JERADG_DOTFILES_PATH)/.zsh/.zshrc" ~/.zshrc

# Install neovim/SpaceVim dependencies

python3 -m pip install --user --upgrade pynvim
gem install neovim
yarn global add neovim
yarn global add tree-sitter-cli
