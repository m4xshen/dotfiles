# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'

# enable vi mode
set -o vi
bind -m vi-insert 'Control-l: clear-screen'

# ignore-case completion
bind 'set completion-ignore-case on'

# prompt customization
# PS1='\e[0;38m[$(cat /sys/class/power_supply/BAT0/capacity)%]-[\A] \e[1;31m\u\e[0m:\e[1;34m\W \e[;38m|\e[0m '
PS1='\e[1;31m\u\e[0m=>\e[1;34m\W \e[;38m|\e[0m '

export PATH="$HOME/.local/bin/:$PATH"
export PATH="$HOME/nvim-linux64/bin/:$PATH"
export EDITOR='nvim'

clear
~/pfetch.sh
