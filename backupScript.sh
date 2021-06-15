#!/bin/sh

echo "Please login to your Apple Account through the Mac App Store"
echo "When logged in sucessfully press [ENTER} to continue"
read

##############################################
## Install homebrew and Xcode
##############################################

# Install homebrew (installs Xcode, too)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"


##############################################
## Install brew console tools
##############################################

binaries=(
    cask
    openjdk
    maven
    php
    python
    awscli
    azure-cli
    docker
    fswatch
    git
    go
    lazydocker
    mas
    node
    p7zip
    vim
    wget
    zsh
    zsh-completions
    zsh-syntax-highlighting
)

echo "installing binaries..."
brew install ${binaries[@]}
brew cleanup
echo "Brew Upgrade"
brew upgrade

##############################################
## Install brew cask apps
##############################################

apps=(
    homebrew/cask/1password
    homebrew/cask/alfred
    homebrew/cask/google-chrome
    homebrew/cask/spotify
    homebrew/cask/ultimaker-cura
    homebrew/cask/virtualbox
    homebrew/cask/visual-studio-code
    homebrew/cask/vlc
    homebrew/cask/zoomus
)

echo "installing cask apps..."
brew install --cask ${apps[@]}
brew cleanup

##############################################
## Install App Store Apps through mas
##############################################

echo "install App Store apps ..."

# Daisydisk
mas install 411643860
# Outbank
mas install 1094255754
# Todoist
mas install 585829637
# Unsplash Wallpapers
mas install 1284863847
# WhatsApp
mas install 1147396723

##############################################
## Install other tools apps, plugins etc
##############################################
# Spacevim
echo ">>> install spacevim"
curl -sLf https://spacevim.org/install.sh | bash
# OhMyZsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
echo ">>> install Powerlevel9k"
# Powerlevel9k
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
# Z
echo ">>> install Z"
git clone https://github.com/rupa/z.git
mv z/z.sh ~/.z.sh
touch ~/.z
rm -rf z










# Commented 
    # homebrew/cask/bartender
    # homebrew/cask/carbon-copy-cloner
    # homebrew/cask/cleanmymac
    # homebrew/cask/datagrip
    # homebrew/cask/deezer
    # homebrew/cask/divvy
    # homebrew/cask/droplr
    # homebrew/cask/firefox
    # homebrew/cask/goland
    # homebrew/cask-drivers/synology-drive
    # homebrew/cask/timings
    # homebrew/cask/tower
    # homebrew/cask/transmit
    # homebrew/cask/grandtotal
    # homebrew/cask/imazing
    # homebrew/cask/iterm2
    # homebrew/cask/karabiner-elements
    # homebrew/cask-drivers/logitech-g-hub
    # homebrew/cask/microsoft-teams
    # homebrew/cask-versions/microsoft-office-2016
    # homebrew/cask/mockoon
    # homebrew/cask/nosqlbooster-for-mongodb
    # homebrew/cask/path-finder
    # homebrew/cask/postbox
    # homebrew/cask/postman
    # homebrew/cask/protonmail-bridge
    # homebrew/cask/phpstorm
    # homebrew/cask/postbox
    # homebrew/cask/skype
    # homebrew/cask/vagrant
    # homebrew/cask-drivers/zsa-wally

# affinity Photo
    # mas install 824183456
# affinity Designer
    # mas install 824171161
# Bear
    # mas install 1091189122
# Diagrams
    # mas install 1276248849
# Fantastical
    # mas install 975937182
# Slack
    # mas install 803453959
# Keka
    # mas install 470158793
# Lanscan
    # mas install 472226235
# MindNode
    # mas install 1289197285
# Tweetbot
    # mas install 1384080005