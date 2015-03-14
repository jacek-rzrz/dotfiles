# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# The pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar


export PS1='`if [ $? = 0 ]; then echo "\[\033[02;32m\]+"; else echo "\[\033[02;31m\]x"; fi`\[\033[02;39m\]\u@\[\033[01;30m\]\h\[\033[01;34m\] \w\[\033[35m\] \[\033[01;30m\]>\[\033[00m\] '

export PATH=$PATH:.:~/go/go_appengine:/usr/local/go/bin

alias bye='exit'
alias ls='ls --color=auto'
alias l='ls -lh'
alias www='google-chrome >/dev/null 2>&1 & bye'
