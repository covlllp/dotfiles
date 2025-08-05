# Installation

## Apt Packages
You might need to install git, node, neofetch, and curl

## Termite
- https://github.com/Corwind/termite-install


## Set up everything else
1. Clone dotfiles repo `git clone https://github.com/covlllp/dotfiles.git ~/dotfiles`

2. Load submodules with `git submodule init && git submodule update`

3. Install prompt-pure: `brew install pure` (TODO: script for brew packages)

4. Install powerline fonts: `./fonts/install.sh`

5. Setup symlinks to dotfiles `source ~/dotfiles/setup_home_symlinks.sh`

6. Change shell to zsh `chsh -s /bin/zsh`

7. Install vim plugins with `:PlugInstall`

8. [Optional] Install Copilot with `:Copilot setup`

8. Restart!

## Resources
- Fonts: https://github.com/powerline/fonts
- Pure Prompt: https://github.com/sindresorhus/pure
- Neofetch: https://github.com/dylanaraps/neofetch
- Colors: https://github.com/mbadolato/iTerm2-Color-Schemes (Use OceanicMaterial)
