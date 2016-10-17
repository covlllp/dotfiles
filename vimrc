set nocompatible

" --- VUNDLE SETUP --- "
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Text editing helpers
Plugin 'ntpeters/vim-better-whitespace' " Better Whitespace removal/highlighting
Plugin 'tpope/vim-surround'             " Add, edit, remove tags like ', \", (, {
Plugin 'vim-scripts/tComment'           " Shortcut to toggle comments
Plugin 'jiangmiao/auto-pairs'           " Auto pairing of tags

" Code linting
Plugin 'scrooloose/syntastic'

" File navigation
Plugin 'ctrlpvim/ctrlp.vim'             " Fuzzy search for files
Plugin 'scrooloose/nerdtree'            " Sidebar for file directory

" Syntax highlighting
Plugin 'othree/yajs.vim'                " ES6
Plugin 'kchmck/vim-coffee-script'       " Coffee

" Git helpers
Plugin 'airblade/vim-gitgutter'         " Gitgutter

" Vim UI improvements
Plugin 'junegunn/goyo.vim'              " Distraction-free writing
Plugin 'chriskempson/base16-vim'        " Base16 syntax highlighting color scheme
Plugin 'vim-airline/vim-airline'        " Nice status/tabline
Plugin 'vim-airline/vim-airline-themes' " status/tabline themes

call vundle#end()
filetype plugin indent on


" --- Set VIM config --- "

" Switch leader to , (\ is default)
let mapleader = ","

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Turn backup off, since most stuff is in git anyways
set nobackup
set nowb
set noswapfile

" Syntax highlighting on
syntax on

" Enable mouse
set mouse=a

" Show line numbers
set number

" Highlight the line we're on
set cursorline

" Set terminal title
set title

" Allow multiple buffers
set hidden

" Set ruler
set colorcolumn=100
highlight ColorColumn ctermbg=7

" Set to auto read when a file is changed from the outside
set autoread

" Search settings
set incsearch  " Find the next match as we type the search
set hlsearch   " Highlight searches by default
set ignorecase " Smart searching
set smartcase

" Tabbing
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Set tabs to 4 for python
autocmd FileType py setlocal shiftwidth=4 tabstop=4

" Configure backspace so it acts as it should
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Show matching brackets when text indicator is over them
set showmatch
set mat=2      " How many tenths of a second to blink when matching

" Line wrapping, but dont' insert newlines
set wrap
set textwidth=0 wrapmargin=0

" Pane splitting
set splitbelow
set splitright

" Set shell to zsh
set shell=zsh

" Set colorscheme to base16
" colorscheme base16-solarized-dark


" --- Plugin Settings --- "

" Airline
set laststatus=2
let g:airline_powerline_fonts = 1

" CtrlP
map <leader>c :CtrlPClearCache<CR>

" Nerdtree
let g:ctrlp_custom_ignore = {
\ 'dir': 'node_modules',
\ }

map <C-k><C-u> :NERDTreeToggle<CR>

" Fix whitespace
nnoremap <leader>w :StripWhitespace<CR>

" --- Remappings --- "

" semicolon to colon (save the shift!)
nnoremap ; :

" esc to jj
imap jj <Esc>

" Pane creation
nnoremap <C-k><C-l> :vnew<CR>
nnoremap <C-k><C-j> :new<CR>

" Pane navigation
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>h <C-W><C-h>

" navigation
nmap J 5j
nmap K 5k
nmap H b
nmap L w

map <C-k><C-k> zz

" clear search highlight
nnoremap <leader>/ :noh<CR>

