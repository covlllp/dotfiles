#!/usr/bin/env bash

sudo npm install -g pure-prompt

rm /usr/local/share/zsh/site-functions/prompt_pure_setup
rm /usr/local/share/zsh/site-functions/async

sudo ln -s "/usr/local/lib/node_modules/pure-prompt/pure.zsh" /usr/local/share/zsh/site-functions/prompt_pure_setup
sudo ln -s "/usr//local/lib/node_modules/pure-prompt/async.zsh" /usr/local/share/zsh/site-functions/async
