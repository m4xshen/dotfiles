# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
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

export QT_QPA_PLATFORM=wayland

# alias
alias n='nvim.appimage'
alias gogogo='kitty +kitten ssh -oHostKeyAlgorithms=+ssh-dss s111_111511004SSW@140.113.120.238 -p 22'
alias rm='rm -I'

pfetch.sh
