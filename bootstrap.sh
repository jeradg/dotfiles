#!/bin/bash

# Install brew packages from Brewfile
brew bundle

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install SpaceVim
sh -c "$(curl -fsSL https://spacevim.org/install.sh)"

# link dotfiles
ln -s "$(pwd)/.SpaceVim.d" ~/.SpaceVim.d
ln -s "$(pwd)/.tmux/.tmux.conf" ~/.tmux.conf
ln -s "$(pwd)/.zsh/.zshrc" ~/.zshrc
