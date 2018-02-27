set nocompatible

" --- VUNDLE SETUP --- "
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Tmux helpers
Plugin 'christoomey/vim-tmux-navigator' " Better navigation between tmux and vim

" Text editing helpers
Plugin 'ntpeters/vim-better-whitespace' " Better Whitespace removal/highlighting
Plugin 'tpope/vim-surround'             " Add, edit, remove tags like ', \", (, {
Plugin 'vim-scripts/tComment'           " Shortcut to toggle comments
Plugin 'jiangmiao/auto-pairs'           " Auto pairing of tags
Plugin 'ervandew/supertab'              " Autocomplete

" Snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'grvcoelho/vim-javascript-snippets'

" Zsh integration
Plugin 'tpope/vim-dispatch'             " Run commands asynchronously

" Code linting
Plugin 'w0rp/ale'
Plugin 'sbdchd/neoformat'               " Autoformater

" File navigation
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'               " Fuzzy search for files
Plugin 'scrooloose/nerdtree'            " Sidebar for file directory
Plugin 'qpkorr/vim-bufkill'             " Buffer management
Plugin 'schickling/vim-bufonly'         " Buffer deletion
Plugin 'pbrisbin/vim-mkdir'             " Make directories automatically

" Syntax highlighting
Plugin 'kchmck/vim-coffee-script'       " Coffee
Plugin 'othree/yajs.vim'                " ES6
Plugin 'mxw/vim-jsx'                    " JSX
Plugin 'leafgarland/typescript-vim'     " Typescript
Plugin 'ianks/vim-tsx'                  " TSX
Plugin 'cakebaker/scss-syntax.vim'      " SCSS
Plugin 'groenewege/vim-less'            " Less
Plugin 'tpope/vim-markdown'             " Markdown

" Git helpers
Plugin 'airblade/vim-gitgutter'         " Gitgutter
Plugin 'tpope/vim-fugitive'             " Helpful git stuff

" Vim UI improvements
Plugin 'junegunn/goyo.vim'              " Distraction-free writing
Plugin 'mhartington/oceanic-next'       " Oceanic-next
Plugin 'vim-airline/vim-airline'        " Nice status/tabline
Plugin 'vim-airline/vim-airline-themes' " status/tabline themes
Plugin 'Yggdroot/indentLine'            " indent guides

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
set colorcolumn=80,100
highlight ColorColumn ctermbg=7

" Enable Elite mode, No arrows
let g:elite_mode=1

" Set to auto read when a file is changed from the outside
set updatetime=1000
set autoread
:au CursorHold * checktime

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

" Make pasting better
set pastetoggle=<leader>q

" Line wrapping, but dont' insert newlines
set wrap
set textwidth=0 wrapmargin=0

" Show 1 line above/below cursor
set scrolloff=1

" Pane splitting
set splitbelow
set splitright

" Set shell to zsh
set shell=zsh

" Syntax highlighting on
syntax enable

" Set colorscheme to oceanic
set t_Co=256
colorscheme OceanicNext
set term=screen-256color


" --- Plugin Settings --- "

" Ale

" Neoformat
" Only use Neoformat for typescript and javascript files
augroup fmt
  autocmd!
  autocmd BufWritePre *.tsx,*.jsx,*.ts,*.js undojoin | Neoformat
augroup END

" Airline
set laststatus=2
set noshowmode
let g:airline_theme='oceanicnext'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" JSX syntax
let g:jsx_ext_required = 0

" FZF
map <C-t> :Buffers<CR>
map <C-e> :History<CR>
map <C-p> :GFiles<CR>
map <C-f> :Lines<CR>

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Nerdtree
map <C-k><C-u> :NERDTreeToggle<CR>
map <C-k><C-r> :NERDTreeFind<CR>

" Fix whitespace
nnoremap <leader>w :StripWhitespace<CR>

" Goyo
let g:goyo_width=100
map <leader>g :Goyo<CR>

" BufKill
" Close buffer
map <C-w> :BD<CR>

" BufOnly
map <C-k><C-w> :BufOnly<CR>

" indentLine
let g:indentLine_color_term = 239

" Vim Markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['html', 'python', 'javascript']

" vim surround
nmap s ysiw


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

" navigation
nmap J 5j
nmap K 5k
nmap H 5h
nmap L 5l

map <C-k><C-k> zz

" clear search highlight
nnoremap <leader>/ :noh<CR>

" Disable arrow movement, resize splits instead.
if get(g:, 'elite_mode')
  nnoremap <Up>    :resize +2<CR>
  nnoremap <Down>  :resize -2<CR>
  nnoremap <Left>  :vertical resize +2<CR>
  nnoremap <Right> :vertical resize -2<CR>
endif

" open new file
map <C-o> :edit 

