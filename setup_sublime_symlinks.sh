#!/usr/bin/env bash

# Collect os
os=$1
if [ "$os" != "linux" ]
  then
    os="mac"
fi

if ["$os" == 'mac']
then
  sublime_path="$HOME/Library/Application Support/Sublime Text 3/Packages/User"
else
  sublime_path="$HOME/test"
fi

## Remove old files (if they're there)
# rm "$sublime_path/alt_page_updown.py"
# rm "$sublime_path/Default (OSX).sublime-keymap"
rm ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/alt_page_updown.py
rm ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default\ \(OSX\).sublime-keymap
rm ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.sublime-settings
rm ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
rm -rf ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Snippets

rm ~/.editorconfig

## Create the symbolic links
ln -s ~/dotfiles/Sublime/alt_page_updown.py ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/alt_page_updown.py
ln -s ~/dotfiles/Sublime/Default\ \(OSX\).sublime-keymap ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default\ \(OSX\).sublime-keymap
ln -s ~/dotfiles/Sublime/Package\ Control.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.sublime-settings
ln -s ~/dotfiles/Sublime/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
ln -s ~/dotfiles/Sublime/Snippets ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Snippets

ln -s ~/dotfiles/.editorconfig ~/.editorconfig

# Reload bash
source ./.bashrc
