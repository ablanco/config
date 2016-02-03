#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias ll='ls -l --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias la='ls -lah --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias grep='grep --color=tty -d skip'
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias diff='diff -u'                      # diff unified format
alias sshpro='eval `ssh-agent`;ssh-add'   # prepare to export shh identity
alias ssh='ssh -A'                        # always export the agent

# arch linux stuff
alias yu='yaourt -Syu --aur'
alias yc='yaourt -Sc'

# vim stuff
export EDITOR=vim
export VISUAL=vim
alias vi=vim

# Node Completion
#shopt -s progcomp
#for f in $(command ls ~/.node-completion); do
#  f="$HOME/.node-completion/$f"
#  test -f "$f" && . "$f"
#done

# prompt for git
# PS1='[\u@\h \W]\$ '
function current_branch
{
 x=$(git branch 2> /dev/null | grep ^* | awk '{print $2}')
 if [ ! -z $x ]
 then
 echo "!$x"
 fi
}
PS1='[\u@\[\033[01;32m\]\h\[\033[0m\] \w]\[\033[01;33m\]$(current_branch)\[\033[0m\] \$ '

# up function
source $HOME/.up_function.sh
