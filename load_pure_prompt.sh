#!/usr/bin/env bash

sudo npm install -g pure-prompt

sudo ln -s "/usr/lib/node_modules/pure-prompt/pure.zsh" /usr/local/share/zsh/site-functions/prompt_pure_setup
sudo ln -s "/usr/lib/node_modules/pure-prompt/async.zsh" /usr/local/share/zsh/site-functions/prompt_pure_setup
