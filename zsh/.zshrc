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
path+=('/home/m4xshen/.local/share/gem/ruby/3.0.0/bin')
export PATH

export EDITOR='nvim'

export QT_QPA_PLATFORM=wayland

# alias
alias n='nvim'
alias n-lazy='NVIM_APPNAME=LazyVim nvim'
alias n-nvchad='NVIM_APPNAME=NvChad nvim'
# alias auv='ssh auv@192.168.0.112'
alias auv='n scp://auv@192.168.0.112/~/'
# alias oop='kitty +kitten ssh stu111511004@140.113.236.57 -p 2751'
alias oop='n scp://stu111511004@140.113.236.57:2751/~/'
alias gogogo='n scp://s111_111511004SSW@140.113.120.238/~/'
alias rm='rm -I'
alias hs='hugo server --noHTTPCache --disableFastRender'

alias gl='git log --oneline --graph --decorate'
alias gla='git log --oneline --graph --decorate --all'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gb='git branch'

neofetch --source ~/Pictures/wallpaper.jpg --colors 4 7 7 4 7 7
