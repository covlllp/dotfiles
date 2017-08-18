# Installation

## Termite
Using combination of:
- https://github.com/Corwind/termite-install
- https://gist.github.com/kaspergrubbe/a93116fe47f3403d5a2e46e5adeadf5a


## Set up everything else
1. Clone dotfiles repo `git clone https://github.com/covlllp/dotfiles.git ~/dotfiles`

2. Load submodules with `git submodule init && git submodule update`

3. Install prompt-pure: `sudo source ~/dotfiles/load_pure_prompt.sh` or `lpp`

4. Setup symlinks to dotfiles `source ~/dotfiles/setup_home_symlinks.sh`

5. Change shell to zsh `chsh -s /bin/zsh`

6. Restart!

## Resources
- Fonts: https://github.com/powerline/fonts
