#!/usr/bin/env bash

# Remove old files
rm ~/.bash_profile
rm ~/.bashrc
rm ~/.gitconfig
rm ~/.vimrc
rm ~/.zshrc
rm ~/.gitignore_global
rm ~/.git-completion.bash

# Setup symbolic links for files to ~/
ln -s ~/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.gitignore_global ~/.gitignore_global
ln -s ~/dotfiles/.git-completion.bash ~/.git-completion.bash

# Reload bash
source ./.bashrc
