# Use bash syntax
#!/bin/bash

# Author: Jian Hua, He
# Email: jerry.fullinn@gmail.com
# Description: Install commonly use bash command and vim configuration

# Receive signal
trap "err 'Unexpected Error occured.';rollback;exit 0" SIGTERM SIGINT SIGHUP SIGQUIT

# Library
function info {
    echo -e "\033[34m[INFO] $1\033[39m"
}

function success {
    echo -e "\033[032m[SUCCESS] $1\033[039m"
}

function err {
    echo -e "\033[031m[ERROR] $1\033[039m"
}

function rollback {
    rm -rf ~/.bash_profile ~/.vim ~/.vimrc
}

# Install .bash_profile
cp ../src/.bash_profile ~/

# Setup vim install env
mkdir ~/.vim
cp ../src/.vimrc_install ~/.vimrc
cp -r ../src/.vim ~/

# Install Vim Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install vim package
vim +PlugInstall +qall

vim +PluginInstall +qall

# Add vim configurate
cp ../src/.vimrc ~/.vimrc
