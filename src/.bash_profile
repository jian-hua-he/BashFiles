# General
export PATH="/usr/local/sbin:$PATH"
export CLICOLOR=1
export TERM=xterm-256color

# Common
alias la='ls -al'
alias ll='ls -l'

# Folder Path
alias ..='cd ..'
alias home='cd ~'
alias root='cd /'

alias personal="cd ~/Projects/Personal"
alias jobs="cd ~/Projects/Jobs"
alias practice="cd ~/Projects/Practice"

# Git
alias glg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias gck="git checkout"
alias gaa="git add ."
alias gcm="git commit -m"
alias gst="git status"
alias gfa="git fetch -a"

