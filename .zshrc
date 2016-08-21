source ~/dotfiles/antigen/antigen.zsh
source ~/dotfiles/cli_aliases

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Shell completion suggestions
antigen bundle zsh-users/zsh-autosuggestions
# Bind ctrl + space to autoaccept
bindkey '^ ' autosuggest-accept

# Use pure prompt theme
# https://github.com/sindresorhus/pure
autoload -U promptinit && promptinit
prompt pure
