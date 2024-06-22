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
export PATH="$(yarn global bin):$PATH"
export EDITOR='nvim'
export QT_QPA_PLATFORM="wayland;xcb"
export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/docker.sock

# alias
alias n='~/nvim-linux64/bin/nvim'
alias nvim='~/nvim-linux64/bin/nvim'
alias n-lazy='NVIM_APPNAME=LazyVim nvim'
alias n-nvchad='NVIM_APPNAME=NvChad nvim'
alias rm='rm -I'
alias hs='hugo server --noHTTPCache --disableFastRender'

alias gl='git log --oneline --graph --decorate'
alias gla='git log --oneline --graph --decorate --all'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gb='git branch'
alias gr='git restore'
alias yrd='yarn run dev'
alias yrb='yarn run build'
alias yrl='yarn run lint'

# neofetch --source ~/Pictures/wallpaper.jpg --colors 4 7 7 4 7 7

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/etc/profile.d/conda.sh" ]; then
        . "/usr/etc/profile.d/conda.sh"
    else
        export PATH="/usr/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# export TERM=xterm
