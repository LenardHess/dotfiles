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

PS1="\[\033[01;32m\]\u@\h\[\033[00m\]: \[\033[33m\]\w\[\033[36m\]$PS1SUFFIX\[\033[0m\]\n\$ "

# Source the machine-specific file if it exists
if [ -f $HOME/dotfiles/machine/bashrc ]; then
    source $HOME/dotfiles/machine/bashrc
fi
