# these changes can go in .bashrc or /etc/bash.bashrc.
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\e[C": forward-char'
bind '"\e[D": backward-char'

PROGRAMS=$HOME/programs

export JAVA_HOME=$PROGRAMS/java

# Avoid duplicates
export HISTCONTROL=ignoredups:erasedups
export HISTSIZE=5000
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend

PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
