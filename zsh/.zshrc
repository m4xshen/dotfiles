# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git 
  vi-mode 
  web-search
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

PROMPT='%F{magenta}%n%f=>%F{blue}%~%f | '

path+=('/home/m4xshen/nvim-linux64/bin')
path+=('/home/m4xshen/.local/bin')
export PATH

export EDITOR='nvim'

# alias
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'

alias n='nvim'

pfetch.sh
