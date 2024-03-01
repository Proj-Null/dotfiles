#
# ~/.bashrc
#display sys info

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
PS1='[\u@\h \W]\$ '
eval "$(starship init bash)"export PATH="$PATH:$HOME/.config/composer/vendor/bin"
