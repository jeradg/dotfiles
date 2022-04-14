#!/bin/bash

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

mv ~/.zshrc ~/.zshrc.default-oh-my-zsh

# link dotfiles
ln -s $(pwd)/.tmux/.tmux.conf ~/.tmux.conf
ln -s $(pwd)/.zshrc ~/.zshrc

case "$OSTYPE" in
  darwin*)
    $ENV_PREFIX="darwin"
  ;;
  linux*)
    $ENV_PREFIX="linux"
  ;;
esac

ln -s $(pwd)/.tmux/env/$ENV_PREFIX.conf $(pwd)/.tmux/env.conf

# Install neovim/SpaceVim dependencies

python3 -m pip install --user --upgrade pynvim
gem install neovim
yarn global add neovim
yarn global add tree-sitter-cli
