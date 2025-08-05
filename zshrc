# Terminal settings
export TERM="xterm-256color"

# Start tmux if not already in it
if [ -z "$TMUX" ] && [ -z "$SSH_CONNECTION" ]; then
  exec tmux
fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(
    git
    vi-mode 
    yarn
    zsh-autosuggestions 
    fast-syntax-highlighting
)

HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

source $ZSH/oh-my-zsh.sh

alias dot='code ~/Development/dotfiles'
alias j='code ~/Documents/journal'
alias jordanmmck='code ~/Development/jordanmmck'
alias theory='code ~/Documents/theory'
alias tmux='tmux -2'
alias c='code .'
alias s=ls
alias t='tree'
alias gadd='git add .'
alias gst='git status'

typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=160' # Red for unknown commands
ZSH_HIGHLIGHT_STYLES[command]='fg=green'    # Green for valid commands
ZSH_HIGHLIGHT_STYLES[path]='fg=blue,underline' # Blue and underlined for paths
ZSH_HIGHLIGHT_STYLES[mathvar]='fg=yellow'   # Yellow for math variables

# disable ctrl-s scroll lock
stty -ixon

# source /Users/jordan/.oh-my-zsh/plugins/vi-mode/vi-mode.plugin.zsh
# source /Users/jordan/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# source /Users/jordan/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# pure theme
# autoload -U promptinit; promptinit
# prompt pure