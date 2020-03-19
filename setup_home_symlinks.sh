#!/usr/bin/env bash

# Remove old files
rm ~/.gitconfig
rm ~/.gitignore_global
rm ~/.vimrc
rm ~/.zshrc
rm ~/.tmux.conf
rm -rf ~/.vim
rm ~/.config/termite/config
rm ~/.prettierrc.config.js

# Setup symbolic links for files to ~/
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/gitignore_global ~/.gitignore_global
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/termite_config ~/.config/termite/config
ln -s ~/dotfiles/.prettierrc.config.js ~/.prettierrc.config.js

# Setup pure prompt
source ~/dotfiles/load_pure_prompt.sh
