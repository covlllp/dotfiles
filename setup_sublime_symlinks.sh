#!/usr/bin/env bash

# OS=$1
if [ "$1" == "linux" ] || [ "$1" == "mac" ] ; then
  OS="$1"
else
  echo "Please provide OS type (linux or mac)"
  return
fi

if [ $OS == "mac" ]; then
  SUBLIME_PATH="$HOME/Library/Application Support/Sublime Text 3/Packages/User"
else
  SUBLIME_PATH="$HOME/.config/sublime-text-3/Packages/User"
fi

## Remove old files (if they're there)
# rm "$sublime_path/alt_page_updown.py"
# rm "$sublime_path/Default (OSX).sublime-keymap"
rm "$SUBLIME_PATH/alt_page_updown.py"
rm "$SUBLIME_PATH/Default (OSX).sublime-keymap"
rm "$SUBLIME_PATH/Package Control.sublime-settings"
rm "$SUBLIME_PATH/Preferences.sublime-settings"
rm -rf "$SUBLIME_PATH/Snippets"

rm ~/.editorconfig

## Create the symbolic links
ln -s ~/dotfiles/Sublime/alt_page_updown.py "$SUBLIME_PATH/alt_page_updown.py"
ln -s ~/dotfiles/Sublime/Default\ \(OSX\).sublime-keymap "$SUBLIME_PATH/Default (OSX).sublime-keymap"
ln -s ~/dotfiles/Sublime/Default\ \(Linux\).sublime-keymap "$SUBLIME_PATH/Default (Linux).sublime-keymap"
ln -s ~/dotfiles/Sublime/Package\ Control.sublime-settings "$SUBLIME_PATH/Package Control.sublime-settings"
ln -s ~/dotfiles/Sublime/Preferences.sublime-settings "$SUBLIME_PATH/Preferences.sublime-settings"
ln -s ~/dotfiles/Sublime/Snippets "$SUBLIME_PATH/Snippets"

ln -s ~/dotfiles/.editorconfig ~/.editorconfig
