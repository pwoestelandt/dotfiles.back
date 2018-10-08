" color
set background=dark
colorscheme solarized

" syntax
syntax enable
syntax on
set nocompatible
filetype off

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
set colorcolumn=80
set laststatus=2

" searching
set incsearch
set hlsearch
set ignorecase
set smartcase
set path+=**

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
"
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-h> <C-w>h
nmap <C-l> <C-w>h
" Make the view port scroll faster
nnoremap <C-e> 5<C-e>
nnoremap <C-y> 5<C-y>

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

"ack
set runtimepath^=~/.vim/bundle/ack.vim
let g:ackprg = 'ag --nogroup --nocolor --column --mmap'

nmap <leader>a mA:Ack<space>
nmap <leader>aa mA:Ack "<C-r>=expand("<cword>")<cr>"
nmap <leader>aA mA:Ack "<C-r>=expand("<cWORD>")<cr>

" Syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

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

Plugin 'mileszs/ack.vim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'kchmck/vim-coffee-script'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-syntastic/syntastic'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'junegunn/vim-easy-align'

call vundle#end()
filetype plugin indent on
