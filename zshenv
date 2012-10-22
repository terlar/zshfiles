# Title
if [[ $TERM = xterm* ]]; then
  _xterm-title() {
    print -Pn "\e]0;%n@%m: %~\a"
  }
  precmd_functions+=(_xterm-title)
fi

# Color
export TERM="xterm-256color"

export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:'

export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;32'

# Locale
export LANG="en_US.UTF-8"
export LC_ALL=$LANG

# Editor
export VISUAL="vim"
export EDITOR=$VISUAL

# Paths
export PROJECTS=$HOME/Code
cdpath=($PROJECTS)

path=($HOME/.local/bin /usr/local/bin $PATH)
if (( $+commands[ry] )); then
  eval "$(ry setup)"
fi
typeset -U path

export NODE_PATH=/usr/local/lib/node_modules
export REMOTE_GEM_CACHE_PATH=$HOME/.remote-gem-cache
