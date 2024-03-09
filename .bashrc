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
eval "$(starship init bash)"export PATH="$PATH:$HOME/.config/composer/vendor/bin"
#if [[ "$(tty)" == "/dev/tty1" ]]; then
#	export XDG_CURRENT_DESKTOP=sway
#	export MOZ_ENABLE_WAYLAND=1
#	export QT_QPA_PLATFORM=wayland
#	export SDL_VIDEODRIVER=wayland
#	export CLUTTER_BACKEND=wayland
#	export GDK_BACKEND=wayland
#	export BEMENU_BACKEND=wayland
#	sway --unsupported-gpu
#fi
