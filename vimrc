" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'bronson/vim-trailing-whitespace'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-syntastic/syntastic'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'junegunn/vim-easy-align'
Plugin 'martinda/Jenkinsfile-vim-syntax'
Plugin 'thoughtbot/vim-rspec'
Plugin 'jgdavey/tslime.vim'
Plugin 'neomake/neomake'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

call neomake#configure#automake('nrwi', 500)



set shell=bash
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
set wildmode=longest,list,full
set wildmenu
set visualbell
set noerrorbells
set colorcolumn=80
set ruler
set showcmd
set showmode

" status line
set laststatus=2
" Add git branch to statusline
set statusline=%F\ %m\ %{fugitive#statusline()}\ %y%=%l,%c\ %P

" searching
set incsearch
set hlsearch
set ignorecase
set smartcase
set path+=**

" spellcheck
set spell

" autocomplete
set complete-=i " disable files

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

"Jump back to last edited buffer
nnoremap <C-b> <C-^>
inoremap <C-b> <esc><C-^>

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
"trailing whitespaces
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

" specs
let g:rspec_command = 'call Send_to_Tmux("bundle exec rspec {spec}\n")'
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" used patched fonts for airline arrows/triangles
let g:airline_powerline_fonts=1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_close_button = 0

let g:airline_theme='molokai'
filetype plugin indent on
