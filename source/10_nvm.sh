export NVM_DIR="$HOME/.nvm"

if [ is_osx ]
then
  . "$(brew --prefix nvm)/nvm.sh"  # This loads nvm on Mac with Homebrew
else
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm on Ubuntu
fi
