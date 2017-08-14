export PATH="/usr/local/sbin:$PATH"
export CLICOLOR=1
export TERM=xterm-256color

# Common
alias la='ls -al'
alias ll='ls -l'

# Path
alias ..='cd ..'
alias home='cd ~'
alias root='cd /'

# Git
alias gitlg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
