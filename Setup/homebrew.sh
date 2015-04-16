# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew
echo "Updating Homebrew ..."
brew update
brew upgrade

# Install Homebrew Cask
# echo "Installing Homebrew Cask ..."
# brew install caskroom/cask/brew-cask
# echo "Done"

# Install Applications
brew cask install --appdir="/Applications" flux
