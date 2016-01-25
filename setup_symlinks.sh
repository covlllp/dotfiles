#!/usr/bin/env bash

# Setup symbolic links for files to ~/
ln -s ~/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.editorconfig ~/.editorconfig


# --- Setup symbolic links for Sublime user preferences --- #

## Remove old files (if they're there)
rm ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/alt_page_updown.py
rm ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default\ \(OSX\).sublime-keymap
rm ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.sublime-settings
rm ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
rm -rf ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Snippets

## Create the symbolic links
ln -s ~/dotfiles/Sublime/alt_page_updown.py ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/alt_page_updown.py
ln -s ~/dotfiles/Sublime/Default\ \(OSX\).sublime-keymap ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default\ \(OSX\).sublime-keymap
ln -s ~/dotfiles/Sublime/Package\ Control.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.sublime-settings
ln -s ~/dotfiles/Sublime/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
ln -s ~/dotfiles/Sublime/Snippets ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Snippets


# Reload bash
source ./.bashrc
