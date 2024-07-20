# Path to your oh-my-zsh installation.
fpath=($HOME/completion_zsh $fpath)
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  vi-mode 
  web-search
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

PROMPT='%F{magenta}%n%f=>%F{blue}%~%f | '

path+=('/home/m4xshen/.local/bin')
path+=('/home/m4xshen/.local/share/gem/ruby/3.0.0/bin')
# export PATH="$(yarn global bin):$PATH"
export EDITOR='nvim'
export PATH=/opt/homebrew/bin:$PATH

# alias
alias n='nvim'
alias rm='rm -I'
alias hs='hugo server --noHTTPCache --disableFastRender'

alias gl='git log --oneline --graph --decorate'
alias gla='git log --oneline --graph --decorate --all'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gb='git branch'
alias gr='git restore'
# alias yrd='yarn run dev'
# alias yrb='yarn run build'
# alias yrl='yarn run lint'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
