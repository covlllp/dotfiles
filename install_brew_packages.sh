#!/bin/bash

# List your packages here
packages=(
  tmux
  pure
  neofetch
  node
  git
  the_silver_searcher
  vim
  neovim
)

echo "📦 Starting Homebrew installations..."

for pkg in "${packages[@]}"; do
  if brew list "$pkg" &>/dev/null; then
    echo "✅ $pkg is already installed"
  else
    echo "➡️ Installing $pkg..."
    brew install "$pkg"
  fi
done

echo "🎉 Done!"