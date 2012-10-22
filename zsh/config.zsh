# ZLE
bindkey -v
setopt combining_chars
# Edit command line
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

# Input
setopt correct
setopt no_flow_control
setopt no_beep

# CD
setopt auto_cd
setopt cdable_vars
setopt auto_name_dirs
setopt auto_pushd
setopt pushd_ignore_dups

# Job Control
setopt long_list_jobs
