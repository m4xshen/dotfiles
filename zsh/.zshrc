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
export OPENAI_API_KEY=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

export QT_QPA_PLATFORM=wayland

# alias
alias n='nvim.appimage'
alias auv='kitty +kitten ssh auv@192.168.0.109'
# alias oop='kitty +kitten ssh stu111511004@140.113.236.57 -p 2751'
alias oop='n scp://stu111511004@140.113.236.57:2751/~/'
# alias gogogo='kitty +kitten ssh -oHostKeyAlgorithms=+ssh-rsa s111_111511004SSW@140.113.120.238 -p 22'
# alias gogogo='kitty +kitten ssh s111_111511004SSW@140.113.120.238'
alias gogogo='n scp://s111_111511004SSW@140.113.120.238/~/'
alias rm='rm -I'

neofetch --source ~/Pictures/wallpaper2.jpg --colors 4 7 7 4 7 7
