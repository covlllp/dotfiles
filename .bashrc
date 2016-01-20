source ~/dotfiles/.git-prompt.sh

WHITE="\[\033[0m\]"
MAGENTA="\[\033[0;35m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[34m\]"
LIGHT_GRAY="\[\033[0;37m\]"
CYAN="\[\033[0;36m\]"
GREEN="\[\033[0;32m\]"

export CLICOLOR=1
export LS_OPTIONS='--color=auto'
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
export GREP_OPTIONS='--color=auto'
export PATH=~/mongodb/bin:$PATH
export GIT_PS1_SHOWDIRTYSTATE=1
export VISUAL=vim
export EDITOR="$VISUAL"

PS1="\[$CYAN\]\t\[$RED\]-\[$GREEN\]\u\[$BLUE\]\[$BLUE\]\w\[\033[m\]\[$MAGENTA\]\$(__git_ps1)\[$YELLOW\]\$\[$WHITE\] "

bind '"\e\e[D": backward-word'
bind '"\e\e[C": forward-word'
alias ..="cd .."
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias cl="clear"

alias ser="cd ~/src/server"

function db() { vagrant ssh -c "db $@"; }
