source ~/dotfiles/antigen/antigen.zsh
source ~/dotfiles/cli_aliases

# Load the oh-my-zsh's library
antigen use oh-my-zsh

# Bundle gitfast
antigen bundle gitfast

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Shell completion suggestions
antigen bundle zsh-users/zsh-autosuggestions

# ZSH Reload
antigen bundle zsh_reload

# Bind ctrl + space to autoaccept
bindkey '^ ' autosuggest-accept

# Use pure prompt theme
# https://github.com/sindresorhus/pure
autoload -U promptinit && promptinit
prompt pure

# Git completion
autoload -Uz compinit && compinit
