" ##################
" # Vundle Setting #
" ##################
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'isRuslan/vim-es6'
Plugin 'scrooloose/nerdtree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'git@github.com:vim-scripts/xoria256.vim.git'
Plugin 'https://github.com/kshenoy/vim-signature.git'
call vundle#end()

filetype plugin indent on

" ############
" # Vim Plug #
" ############
call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go'
call plug#end()

" ###########
" # General #
" ###########
set nu
set ai
set cursorline
set expandtab
set tabstop=4
set shiftwidth=4
set mouse=a
set backspace=2
set history=100
set list
set listchars=tab:→\ ,trail:⋅,extends:❯,precedes:❮,space:⋅
set runtimepath^=~/.vim
syntax enable
colorscheme xoria256

" ##################
" # Vim go setting #
" ##################
let g:go_highlight_structs = 1 
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" ####################
" # NERDTree Setting #
" ####################
" Open by default
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Prettier
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" ########################
" # Vim Devicons Setting #
" ########################
set encoding=utf8
set guifont=DroidSansMono\ Nerd\ Font:h12

" ############
" # Shortcut #
" ############
nnoremap <S-up> :m .-2<CR>==
nnoremap <S-down> :m .+1<CR>==