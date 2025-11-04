#! /bin/bash

DOTFILES=(.gitconfig .zshrc .config)

for dotfile in $(echo ${DOTFILES[*]});
do
    cp ~/dotfiles/$(echo $dotfile) ~/$(echo $dotfile)
done
