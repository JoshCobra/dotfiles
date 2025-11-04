#! /bin/bash

# Install dos2unix if not already installed
if ! command -v dos2unix &> /dev/null; then
    brew install dos2unix
fi

DOTFILES=(.gitconfig .zshrc .config)

for dotfile in $(echo ${DOTFILES[*]});
do
    cp ~/dotfiles/$(echo $dotfile) ~/$(echo $dotfile)
done
