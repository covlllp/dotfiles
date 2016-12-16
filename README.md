# Installation

1. Clone dotfiles repo `git clone https://github.com/covlllp/dotfiles.git ~/dotfiles`

2. Load submodules with `git submodule init && git submodule update`

3. Install prompt-pure: `npm install -g pure-prompt`
  - You might have to add the symbolic links on your own without homebrew

4. Setup symlinks to dotfiles `source ~/dotfiles/setup_home_symlinks.sh`

5. Change shell to zsh `chsh -s /bin/zsh`

6. Restart!
