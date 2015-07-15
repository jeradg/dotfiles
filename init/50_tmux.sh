# Add .tmux config
if [[ ! -d ~/.tmux ]]; then
  git clone git://github.com/jeradg/dottmux.git ~/.tmux

  ln -s ~/.tmux/.tmux.conf ~/.tmux.conf

  # linux-specific env file
  if [[ is_ubuntu ]]; then
    ln -s ~/.tmux/env/linux.conf ~/.tmux/env.conf
  fi

  # osx-specific env file
  if [[ is_osx ]]; then
    ln -s ~/.tmux/env/darwin ~/.tmux/env.conf
  fi
fi

# Add .tmuxinator project config
if [[ ! -d ~/.tmuxinator ]]; then
  git clone git://github.com/jeradg/dottmuxinator.git ~/.tmuxinator
fi
