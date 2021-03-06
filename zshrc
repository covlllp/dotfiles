source ~/dotfiles/antigen/antigen.zsh
source ~/dotfiles/cli.aliases

# Load the oh-my-zsh's library
antigen use oh-my-zsh

# Bundle gitfast
antigen bundle git
antigen bundle gitfast

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Shell completion suggestions
antigen bundle zsh-users/zsh-autosuggestions

# ZSH Reload
antigen bundle zsh_reload

# Tmux!
antigen bundle tmux

# Apply antigen plugins
antigen apply

# Vim navigation
bindkey -v

# Bind ctrl + space to autoaccept
bindkey '^ ' autosuggest-accept

# Use pure prompt theme
# https://github.com/sindresorhus/pure
autoload -U promptinit && promptinit
prompt pure

# Git completion
autoload -Uz compinit && compinit

# Run neofetch
neofetch

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion
