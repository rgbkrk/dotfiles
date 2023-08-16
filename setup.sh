#!/bin/bash

# Clone the dotfiles repository
git clone https://github.com/rgbkrk/dotfiles.git ~/.dotfiles

# Create symbolic links for configurations
ln -s ~/.dotfiles/.zshrc ~/.zshrc

# Add other symbolic links as needed
# ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
# ln -s ~/.dotfiles/.vimrc ~/.vimrc

# Source the zsh configuration
source ~/.zshrc

echo "Dotfiles setup complete!"

