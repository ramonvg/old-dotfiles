export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="ramonvg"

plugins=(git jump dircycle debian dirhistory docker hhtpie pip)

source $ZSH/oh-my-zsh.sh
unsetopt share_history

# Aliases

export EDITOR=vim
alias 'dc'='docker-compose'
alias 'dcu'='docker-compose up'
alias 'dcd'='docker-compose down'
alias 'dcp'='docker-compose ps'
alias 'dcb'='docker-compose build'
alias 'grin'='grep -rin'
alias 'vim'='nvim'
