# dotfiles

@jeradg's dotfiles.

## Installation

```sh
# Install Xcode command-line tools
xcode-select --install

# Install tmux config and terminal colours

git clone git@github.com:jeradg/.tmux.git ~/.tmux
sh ~/.tmux/install-terminfo.sh

# Install my oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install personal ZSH config

sh -c "$(curl -fsSL https://raw.githubusercontent.com/jeradg/.zsh/main/install.sh)"

# Install RVM
curl -sSL https://get.rvm.io | bash -s stable --ruby

# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

# Clone this repo
git clone git@github.com:jeradg/dotfiles.git

cd dotfiles

# If installing on macOS, install brew packages from Brewfile
brew bundle

# Install SpaceVim
sh -c "$(curl -fsSL https://spacevim.org/install.sh | bash)"

# Run bootstrap to install oh-my-zsh and create links
sh bootstrap.sh
```
