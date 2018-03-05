#!/bin/bash

mkdir -p ~/.config

mkdir -p ~/dotfiles_old/.config

cd ~/dotfiles

BLACKLIST="-I install.sh -I .config -I .git -I .gitignore -I .gitmodules -I README.md -I screenshot.png -I st"

for file in `ls -A $BLACKLIST`
do
    mv ~/$file ~/dotfiles_old
    ln -s ~/dotfiles/$file ~/$file
done

for file in `ls -A -I .config .config`
do
    mv ~/.config/$file ~/dotfiles_old/.config
    ln -s ~/dotfiles/.config/$file ~/.config/$file
done

git submodule update --init --recursive
