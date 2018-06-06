#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

autoload -Uz promptinit
promptinit
prompt skwp

export EDITOR=vim
export WINEARCH=win32

alias ssh='ssh -A'
alias yu='yay -Syu'
alias yc='yay -Sc'
alias git='LANG=en_US git'
