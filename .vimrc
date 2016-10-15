set nocompatible

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


" --- Remappings --- "

" semicolon to colon (save the shift!)
nnoremap ; :

" esc to jj
imap jj <Esc>

" navigation
nmap J 5j
nmap K 5k
nmap H 0
nmap L $
nmap <C>h b
nmap <C>l w
