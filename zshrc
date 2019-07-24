export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="ramonvg"

plugins=(git jump dircycle debian dirhistory docker httpie pip ssh-agent)

source $ZSH/oh-my-zsh.sh
unsetopt share_history

# Aliases
source ~/.bash_aliases

export EDITOR=nvim
AUTOENV_ENV_FILENAME='.autoenv' source ~/.local/bin/activate.sh
PATH=$PATH:~/.bin:~/.local/bin
export WINIT_HIDPI_FACTOR=1.0

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
