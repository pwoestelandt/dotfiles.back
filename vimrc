" color
set background=light
" colorscheme solarized //require pluging

syntax enable

" space and tabs
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set copyindent
set shiftround
set showmatch

" ui
set number
set showcmd
set wildmenu
set visualbell
set noerrorbells

" searching
set incsearch
set hlsearch
set ignorecase
set smartcase

" movement
" move vertically by visual line
noremap <left> <nop>
noremap <right> <nop>
noremap <up> <nop>
noremap <down> <nop>
inoremap <esc> <nop>
nnoremap j gj
nnoremap k gk

" Make the view port scroll faster
nnoremap <C-e> 5<C-e>
nnoremap <C-y> 5<C-y>

" leader
let mapleader = "\<Space>"
inoremap jk <esc>
nnoremap <Leader>w :w<CR> " save


"plugin config
"traillign whitespacea
set runtimepath^=~/.vim/bundle/trailing-whitespace.vim
autocmd BufWritePre * :FixWhitespace
let g:DeleteTrailingWhitespace = 1
let g:DeleteTrailingWhitespace_Action = 'delete'
