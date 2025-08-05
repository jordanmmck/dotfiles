# Only run interactive stuff if this is an interactive shell
[[ $- != *i* ]] && return

export TERM="xterm-256color"

# Start tmux if not already in it
if [ -z "$TMUX" ] && [ -z "$SSH_CONNECTION" ]; then
  exec tmux
fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=( git vi-mode yarn zsh-autosuggestions fast-syntax-highlighting)

HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

source $ZSH/oh-my-zsh.sh

alias dot='code ~/Development/dotfiles'
alias j='code ~/Documents/journal'
alias jordanmmck='code ~/Development/jordanmmck'
alias theory='code ~/Documents/theory'
alias c='code .'
alias s=ls
alias t='tree'
alias gadd='git add .'
alias gst='git status'

# disable ctrl-s scroll lock
stty -ixon

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(pyenv init -)"