#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Generic Aliases
alias ls='ls --color=auto'
alias ll="ls -la"
alias grep='grep --color=auto'

# Git
[ -f /usr/share/bash-completion/completions/git ] && . /usr/share/bash-completion/completions/git
alias g='git'
__git_complete g __git_main
alias gui='gitk --all &'

PS1="[\u@\h \W] $PS1SUFFIX \n\$ "

# Source the machine-specific file if it exists
if [ -f $HOME/dotfiles/machine/bashrc ]; then
    source $HOME/dotfiles/machine/bashrc
fi
