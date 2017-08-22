export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="ramonvg"

plugins=(git jump dircycle debian dirhistory docker hhtpie pip ssh-agent)

source $ZSH/oh-my-zsh.sh
unsetopt share_history

# Aliases
source ~/.bash_aliases

export EDITOR=nvim
source /usr/local/bin/activate.sh
