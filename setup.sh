#!/bin/bash

# Clone if not already cloned
if [ ! -d ~/.dotfiles ]; then
  git clone https://github.com/rgbkrk/dotfiles.git ~/.dotfiles
fi

# Create symlinks
create_symlink() {
  local source_file=$1
  local target_file=$2

  if [ -e "$target_file" ]; then
    read -p "File $target_file already exists. Do you want to overwrite it? (y/n) " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
      echo "Skipping $target_file"
      return
    fi
  fi

  ln -sf "$source_file" "$target_file"
  echo "Created symlink $target_file"
}

create_symlink ~/.dotfiles/.zshrc ~/.zshrc
create_symlink ~/.dotfiles/.gitconfig ~/.gitconfig
create_symlink ~/.dotfiles/.vimrc ~/.vimrc
create_symlink ~/.dotfiles/.gitignore ~/.gitignore

echo "Dotfiles setup complete!"