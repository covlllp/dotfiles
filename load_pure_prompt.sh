#!/usr/bin/env bash

sudo rm /usr/local/share/zsh/site-functions/prompt_pure_setup
sudo rm /usr/local/share/zsh/site-functions/async

sudo ln -s ~/dotfiles/pure/pure.zsh /usr/local/share/zsh/site-functions/prompt_pure_setup
sudo ln -s ~/dotfiles/pure/async.zsh /usr/local/share/zsh/site-functions/async
