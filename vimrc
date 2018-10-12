set nocompatible

" color
set background=dark
colorscheme solarized

" syntax
syntax enable
syntax on
filetype off

" space and tabs
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set copyindent
set shiftround
set showmatch
set backspace=indent,eol,start

" ui
set number
set title
set wildmenu
set visualbell
set noerrorbells
set colorcolumn=80
set cursorline
set ruler
set showcmd
set showmode

" status line
set laststatus=2

" searching
set incsearch
set hlsearch
set ignorecase
set smartcase
set path+=**

" swap and backup
set directory=$HOME/.vim/swp//
set backupdir=~/.vim/backup//

" undo / redo
set undofile
set undodir=~/.vim/undodir

" miscellaneous
set autoread
set hidden

" movement
" move vertically by visual line
noremap <left> <nop>
noremap <right> <nop>
noremap <up> <nop>
noremap <down> <nop>
inoremap <esc> <nop>
nnoremap j gj
nnoremap k gk
map <C-n> :cn<CR>
map <C-p> :cp<CR>

nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-h> <C-w>h
nmap <C-l> <C-w>h

" Make the view port scroll faster
nnoremap <C-e> 5<C-e>
nnoremap <C-y> 5<C-y>

" netrw
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 30

" leader
let mapleader = "\<Space>"
inoremap jk <esc>
nnoremap <Leader>w :w<CR> " save

"copy and past
set clipboard=unnamed

"plugin config
"traillign whitespacea
set runtimepath^=~/.vim/bundle/trailing-whitespace.vim
autocmd BufWritePre * :FixWhitespace
let g:DeleteTrailingWhitespace = 1
let g:DeleteTrailingWhitespace_Action = 'delete'

" Syntastic config
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" EasyAlign
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


Plugin 'VundleVim/Vundle.vim'

Plugin 'bronson/vim-trailing-whitespace'
Plugin 'kchmck/vim-coffee-script'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-syntastic/syntastic'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'junegunn/vim-easy-align'

call vundle#end()
filetype plugin indent on
