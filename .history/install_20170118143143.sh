#!/bin/sh

echo "Setting up your Mac..."
echo "Starting with brew."
echo '----------------------'

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Make ZSH the default shell environment
#chsh -s $(which zsh)

#Do NPM specific stuff
npm set progress=false

echo 'Installing composer.'
echo '--------------------'
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

echo 'Install global Composer packages'
echo '--------------------'
/usr/local/bin/composer global require laravel/installer laravel/lumen-installer laravel/valet tightenco/jigsaw hirak/prestissimo

echo "Install Laravel Valet"
echo '----------------------'
$HOME/.composer/vendor/bin/valet install

echo 'Install global NPM packages'
echo '--------------------'
npm install -g grunt grunt-cli gulp eslint jscs jshint vue vue-cli jsonlint yarn

# Create a Sites directory
# This is a default directory for OS X user accounts but doesn't comes pre-installed
mkdir $HOME/Sites

# Move .dotfiles with settings to home directory (if you don't have a mackup backup).
echo 'copy settings files to ~/ directory'
echo '-----------------------------------'
cp -R settings/. $HOME


# TEMP REMOVED - because doesn't seem to work
# We will run this last because this will reload the shell
#echo 'Set OS X preferences'
#echo '--------------------'
#source .macos
