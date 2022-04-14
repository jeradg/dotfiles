# dotfiles

@jeradg's dotfiles.

## Installation

```sh
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
