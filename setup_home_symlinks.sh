#!/usr/bin/env bash

# Remove old files
rm ~/.gitconfig
rm ~/.gitignore_global
rm ~/.vimrc
rm ~/.zshrc
rm ~/.tmux.conf
rm -rf ~/.vim
rm ~/.config/terminator/config

# Setup symbolic links for files to ~/
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/gitignore_global ~/.gitignore_global
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/terminator_config ~/.config/terminator/config

