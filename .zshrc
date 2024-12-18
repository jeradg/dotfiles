# zsh doesn't like it when you use it with multiple users in macOS...
ZSH_DISABLE_COMPFIX=true

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder


# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  fzf
  git
  node
  macos
  # postgres
  ruby
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
alias vim="nvim"
alias vi="nvim"
alias oldvim="\vim"

export TERM="tmux-256color"

bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line

# optionally set DEFAULT_USER in ~/.zshrc to your regular username to hide the “user@hostname” info when you’re logged in as yourself on your local machine.
export DEFAULT_USER=jeradgallinger
export USER=`whoami`

export PGDATA="/usr/local/var/postgres"

# Set up gpg for yubikey commit signing
export GPG_TTY=$(tty)

# Add user-specific gems to $PATH
# NOTE: This will not auto-update when changing ruby versions (e.g., with rvm or chruby)
export USER_GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$USER_GEM_HOME/bin"

# yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# postgres
export PATH="$PATH:/opt/homebrew/Cellar/postgresql@13/13.15/bin"

if [ -e /Users/jeradgallinger/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/jeradgallinger/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

case "$OSTYPE" in
  # macOS
  darwin*)
    # use readlink from coreutils
    alias readlink="greadlink"

    # make fzf oh-my-zsh plugin work with Apple Silicon homebrew
    export FZF_BASE=/opt/homebrew/Cellar/fzf/0.29.0

    # Homebrew path (for Apple Silicon installations)
    export PATH=/opt/homebrew/bin:$PATH

    # Load NVM
    # (Don't use the nvm oh-my-zsh plugin. Doesn't load nvm from brew on mac.)
    export NVM_DIR="$HOME/.nvm"

    . "$(brew --prefix nvm)/nvm.sh"  # This loads nvm on Mac with Homebrew

    # start autojump
    [ -f `brew --prefix`/etc/profile.d/autojump.sh  ] && . `brew --prefix`/etc/profile.d/autojump.sh
  ;;
  linux*)
    # ...
  ;;
esac

# Absolute path of this script
# (See https://stackoverflow.com/a/28336473/2140241)
CURRENT_PATH=${(%):-%x}
SYMLINK_PATH=$(readlink "$CURRENT_PATH")

# If $SYMLINK_PATH is not empty, use it
if [[ ! -z $SYMLINK_PATH ]]; then
  export DOTFILES_ZSHRC_PATH="$SYMLINK_PATH"
else
  export DOTFILES_ZSHRC_PATH="$CURRENT_PATH"
fi

# Absolute path of the directory this script is in
export DOTFILES_PATH=$(cd "$(dirname "$DOTFILES_ZSHRC_PATH")" && pwd -P)

# Use the SpaceVim config from these dotfiles
export SPACEVIMDIR="$DOTFILES_PATH/.SpaceVim.d"

eval "$(pyenv init --path)"

# Output ruby deprecation warnings
export RUBYOPT="-W:deprecated"

# activate mise
eval "$(/Users/jeradgallinger/.local/bin/mise activate zsh)"
