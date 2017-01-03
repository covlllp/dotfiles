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
Plugin 'qpkorr/vim-bufkill'             " Buffer management

" Syntax highlighting
Plugin 'othree/yajs.vim'                " ES6
Plugin 'kchmck/vim-coffee-script'       " Coffee
Plugin 'HerringtonDarkholme/yats.vim'   " Typescript
Plugin 'mxw/vim-jsx'                    " JSX
Plugin 'ianks/vim-tsx'                  " TSX

" Git helpers
Plugin 'airblade/vim-gitgutter'         " Gitgutter
Plugin 'tpope/vim-fugitive'             " Helpful git stuff

" Vim UI improvements
Plugin 'junegunn/goyo.vim'              " Distraction-free writing
Plugin 'mhartington/oceanic-next'       " Oceanic-next
Plugin 'vim-airline/vim-airline'        " Nice status/tabline
Plugin 'vim-airline/vim-airline-themes' " status/tabline themes

call vundle#end()
filetype plugin indent on


" --- Set VIM config --- "

" Switch leader to , (\ is default)
let mapleader = ","

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf-8

" Turn backup off, since most stuff is in git anyways
set nobackup
set nowb
set noswapfile

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
set colorcolumn=100,120
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

" Set tabs to 4 for python and html
autocmd FileType python setlocal shiftwidth=4 tabstop=4
autocmd FileType html setlocal shiftwidth=4 tabstop=4

" Set .md as markdown
autocmd BufNewFile,BufRead *.md set filetype=markdown

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

" Syntax highlighting on
syntax enable

" Set colorscheme to oceanic
set t_Co=256
set background=dark
colorscheme OceanicNext


" --- Plugin Settings --- "

" Syntastic
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_pylint_post_args="--max-line-length=120"

" Airline
set laststatus=2
set noshowmode
let g:airline_theme='oceanicnext'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" JSX syntax
let g:jsx_ext_required = 0

" CtrlP
map <C-t> :CtrlPBuffer<CR>
map <C-e> :CtrlPMRU<CR>
map <leader>c :CtrlPClearCache<CR>
let g:ctrlp_max_files=0
let g:ctrlp_custom_ignore = {
\ 'dir': 'node_modules\|\.git$\|selenium-tests/results\|images',
\ }

" Nerdtree
map <C-k><C-u> :NERDTreeToggle<CR>

" Fix whitespace
nnoremap <leader>w :StripWhitespace<CR>

" Goyo
let g:goyo_width=100

" BufKill
" Close buffer
map <C-w> :BD<CR>

" --- Remappings --- "

" semicolon to colon (save the shift!)
nnoremap ; :

" esc to jj
imap jj <Esc>

" navigate by display instead of line
noremap k gk
noremap j gj
noremap 0 g0
noremap $ g$

" Pane creation
nnoremap <C-k><C-l> :vnew<CR>
nnoremap <C-k><C-j> :new<CR>

" // to search for selected text
vnoremap // y/<C-R>"<CR>

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

" open new file
map <C-o> :edit 

