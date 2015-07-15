# Only install if the ~/.vim directory doesn't exist
if [[ ! -d ~/.vim  ]]; then
  # clone the dotvim repo
  git clone git@github.com:jeradg/dotvim.git ~/.vim

  # make symlinks to the repo's .vimrc and .gvimrc
  ln -s ~/.vim/.vimrc ~/.vimrc
  ln -s ~/.vim/.gvimrc ~/.gvimrc

  # get plugins
  cd ~/.vim
  git submodule init
  git submodule update

  # compile command-t's C extension if its bundle was installed
  if [[ -d ~/.vim/bundle/command-t ]]; then
    # Command-T must be built using the same version of ruby with which vim
    # was built. We'll assume that's system ruby.
    #
    # If Command-T starts segfaulting, a ruby version mismatch is probably why.
    # See: https://github.com/wincent/Command-T/issues/97
    rvm use system

    cd ~/.vim/bundle/command-t/ruby/command-t
    ruby extconf.rb
    make

    # switch back to default ruby
    rvm use default
  fi
fi
