#!/usr/bin/env bash

os=$1
if [ "$os" != "linux" ]
  then
    os="mac"
fi
echo "$os"

sublime_path="$HOME/Library/Application Support/Sublime Text 3/Packages/User"
cd "$sublime_path"
