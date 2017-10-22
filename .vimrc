" Vundle Setting
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'scrooloose/nerdtree'

call vundle#end()

filetype plugin indent on

" Vim Plug
call plug#begin('~/.vim/plugged')

Plug 'fatih/vim-go'

call plug#end()

" General
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

" Vim go setting
let g:go_highlight_structs = 1 
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
