set relativenumber
set nocompatible

" Set tab to number of spaces
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Auto-indent with max line number
set autoindent
set textwidth=80

" Vumble package manager
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" Add packages to install between begin and end
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
"Plug 'ycm-core/YouCompleteMe'
"Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/fzf'
Plug 'Junegunn/fzf.vim'
call plug#end()
filetype plugin indent on


set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'
call vundle#end()            " required
filetype plugin indent on    " required

" Set colorscheme
packadd! everforest
set background=dark
colorscheme everforest 

" Paranthesis and such completion
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap {<CR> {<CR>}<Esc>O
inoremap [ []<Esc>i
"inoremap < <><Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i

" Setup Ctrl j,h,k,l to switch window to adjacent window direction
nnoremap <c-j> <c-w>j
nnoremap <c-h> <c-w>h
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" Setup Ctrl s to save in normal and insert mode
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a

" Setup Nerdtree to open on Ctrl T
nmap <c-t> :NERDTree<CR>
imap <c-t> <ESC>:NERDTree<CR>

" Setup Ctrl C to quit terminal
nmap <c-c> :q<CR>
imap <c-c> <ESC>:q<CR>

" Setup Ctrl g to open fuzzy file search
nmap <c-g> :Files<CR>
imap <c-g> <ESC>:Files<CR>
