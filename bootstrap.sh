#!/bin/bash

export JERADG_DOTFILES_PATH="$(pwd)"

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

mv ~/.zshrc ~/.zshrc.default-oh-my-zsh

# link dotfiles
ln -s $JERADG_DOTFILES_PATH/.tmux/.tmux.conf ~/.tmux.conf
ln -s $JERADG_DOTFILES_PATH/.zshrc ~/.zshrc

case "$OSTYPE" in
  darwin*)
    $ENV_PREFIX="darwin"
  ;;
  linux*)
    $ENV_PREFIX="linux"
  ;;
esac

ln -s $JERADG_DOTFILES_PATH/.tmux/env/$ENV_PREFIX.conf $JERADG_DOTFILES_PATH/.tmux/env.conf

# Install neovim/SpaceVim dependencies

python3 -m pip install --user --upgrade pynvim
gem install neovim
yarn global add neovim
yarn global add tree-sitter-cli
