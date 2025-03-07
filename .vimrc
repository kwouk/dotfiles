set nocompatible
filetype plugin indent on

set number
syntax enable

" basic editor settings (overridden per-file)
set wrap
set textwidth=80
set formatoptions=qrn1

set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab

set autoindent
set smartindent

" search
set hlsearch
set incsearch
set ignorecase
set smartcase

" more predictable splits
set splitright
set splitbelow

" better split switching
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"better movement on long lines
map <Up> gk
map <Down> gj
map k gk
map j gj

" better built-in search
set path+=**
set wildmenu

" use the mouse
set mouse=a
set clipboard+=unnamedplus

" no backups, no swap
set noswapfile
set nobackup
set nowritebackup

" autowrite / autoread
set autowrite
set autoread

set ruler

" file types and encodings
set encoding=utf8
set ffs=unix,dos,mac

"markdown
au BufNewFile,BufRead *.md setlocal linebreak

" go
au BufNewFile,BufRead *.go setlocal noet ts=4 sw=4 sts=0
