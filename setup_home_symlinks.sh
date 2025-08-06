#!/usr/bin/env bash

# Remove old files
rm ~/.gitconfig
rm ~/.gitignore_global
rm ~/.vimrc
rm ~/.zshrc
rm ~/.tmux.conf
rm -rf ~/.vim
rm -rf ~/.vscode
rm ~/.config/termite/config
rm ~/.prettierrc.json

# Setup symbolic links for files to ~/
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/gitignore_global ~/.gitignore_global
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/termite_config ~/.config/termite/config
ln -s ~/dotfiles/prettierrc.json ~/.prettierrc.json

# Try to setup symbolic link for neovim
ln -s ~/dotfiles/vimrc ~/.config/nvim/init.vim

# Try to setup symbolic link for vscode settings
mkdir -p ~/.vscode
ln -s ~/dotfiles/settings.json ~/.vscode/settings.json