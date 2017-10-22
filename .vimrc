set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'scrooloose/nerdtree'

call vundle#end()

filetype plugin indent on

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
colorscheme spring-night
