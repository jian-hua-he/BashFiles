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

# Create vim configurate
mkdir ~/.vim
cp ../src/.vimrc ~/

# Install package for vim plug
vim +PlugInstall +qall

# Install package for vundle
vim +PluginInstall +qall
