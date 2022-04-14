#!/bin/bash

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

mv ~/.zshrc ~/.zshrc_OLD

# link dotfiles
ln -s "$(pwd)/.SpaceVim.d" ~/.SpaceVim.d
ln -s "$(pwd)/.tmux/.tmux.conf" ~/.tmux.conf
ln -s "$(pwd)/.zsh/.zshrc" ~/.zshrc
