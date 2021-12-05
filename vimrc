if &compatible
    set nocompatible               " Be iMproved
endif

call plug#begin(stdpath('data') . '/plugged')

" Cosmetic plugins

Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Navigation, etc.

Plug 'christoomey/vim-tmux-navigator'
Plug 'preservim/nerdtree'
Plug 'Alok/notational-fzf-vim'

" Writing and Markdown

Plug 'preservim/vim-pencil'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'jreybert/vimagit'

" Code and completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" FZF
set rtp+=/usr/local/opt/fzf

" Look and Feel

if has('mouse')
  set mouse=a
endif

set noerrorbells
set number
set backspace=indent,eol,start
set showcmd
set ttyfast

set splitright
set splitbelow

set laststatus=2

set autoindent
set smartindent
set complete-=i
set showmatch
set smarttab

set shiftround

" Default tab behavior

set tabstop=4
set shiftwidth=4
set expandtab

set background=dark
colorscheme nord

" Backup and file management

set noswapfile
set nobackup
set nowritebackup

set autowrite
set autoread
set hidden

" Search

set incsearch
set hlsearch
set ignorecase
set smartcase

" open help vertically
command! -nargs=* -complete=help Help vertical belowright help <args>
autocmd FileType help wincmd L

" Key mappings
"
" Buffer prev/next
nnoremap <C-x> :bnext<CR>
nnoremap <C-z> :bprev<CR>

" navigate wrapped linesi
map <Up> gk
map <Down> gj
map k gk
map j gj

" notational-FZF
nnoremap <silent> <c-s> :NV<CR>

" Plugin Config

let g:pencil#wrapModeDefault = 'soft'

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END

let g:nv_search_paths = ['~/Notes']

" for vim-gitgutter
highlight! link SignColumn LineNr

" coc.vim
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
