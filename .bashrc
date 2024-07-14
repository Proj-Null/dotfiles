#
# ~/.bashrc
#display sys info
#
#export WLR_NO_HARDWARE_CURSORS=1
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias dotgit='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
alias ls='ls --color=auto'
alias vi='nvim'
alias fetch='fastfetch'
alias grep='grep --color=auto'
alias removeorphans='pacman -Qtdq | pacman -Rns -'
alias ..="cd.."
alias ping="ping -c 5"
. "$HOME/.cargo/env"

. "$HOME/.atuin/bin/env"

[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh
eval "$(atuin init bash)"
