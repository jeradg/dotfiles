# Install rvm
if [[ ! "$(type -P rvm)" ]]; then
  \curl -sSL https://get.rvm.io | bash -s stable --ruby
fi

# Initialize rvm
source $DOTFILES/source/90_rvm.sh

# install gems
if [[ "$(type -P rvm)" ]]; then
  rvm use default

  if [[ ! "$(type -P tmuxinator)" ]]; then
    gem install tmuxinator
  fi

  if [[ ! "$(type -P sass)" ]]; then
    gem install sass
  fi

  if [[ ! "$(type -P compass)" ]]; then
    gem install compass
  fi

  if [[ ! "$(type -P jekyll)" ]]; then
    gem install jekyll
  fi
fi
