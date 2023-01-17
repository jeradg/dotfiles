#!/bin/bash

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

mv ~/.zshrc ~/.zshrc.default-oh-my-zsh

# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

case "$OSTYPE" in
  darwin*)
    ENV_PREFIX="darwin"
  ;;
  linux*)
    ENV_PREFIX="linux"
  ;;
esac

# link dotfiles
ln -sf $SCRIPTPATH/.tmux/.tmux.conf ~/.tmux.conf
ln -sf $SCRIPTPATH/.tmux/env/$ENV_PREFIX.conf ~/.tmux.env.conf
ln -sf $SCRIPTPATH/.zshrc ~/.zshrc

# Install neovim/SpaceVim dependencies
python3 -m pip install --user --upgrade pynvim
gem install --user-install neovim
yarn global add neovim
yarn global add tree-sitter-cli
