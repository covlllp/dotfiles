#!/usr/bin/env bash

# Remove old files
rm ~/.bash_profile
rm ~/.bashrc
rm ~/.gitconfig
rm ~/.vimrc

# Setup symbolic links for files to ~/
ln -s ~/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.vimrc ~/.vimrc

# Reload bash
source ./.bashrc
