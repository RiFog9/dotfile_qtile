#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Colored prompt: [user@host path]$
PS1='\[\033[1;36m\]\u@\h \[\033[1;34m\]\w\[\033[0m\] \$ '

# Colored output helpers
title() { echo -e "\033[1;34m$1\033[0m"; }
ref()   { echo -e "\033[0;36m$1\033[0m"; }
ok()    { echo -e "\033[0;32m$1\033[0m"; }
warn()  { echo -e "\033[1;33m$1\033[0m"; }
error() { echo -e "\033[0;31m$1\033[0m"; }

# Modern aliases
alias ls='exa --icons --group-directories-first'
alias cat='bat'
alias grep='grep --color=auto'

# Fix Ctrl+S terminal freeze
stty -ixon
