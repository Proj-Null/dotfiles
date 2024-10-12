alias dotgit='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' 
alias please=sudo
alias npc=mpc load good-songs && mpc random on && mpc play && ncmpcpp
alias simonsays=sudo
alias download="pacman -S" 
alias repven='sudo vencord -repair -location "/opt/discord"'
alias ls='ls --color=auto'
alias fetch='fastfetch'
alias grep='grep --color=auto'
alias tuxfetch='neofetch --ascii "$(cowsay -f tux $(fortune))"' 
alias removeorphans='pacman -Qtdq |sudo pacman -Rns -'
alias windows="sudo grub-reboot 2 && reboot"
alias ..="cd .."
alias ping="ping -c 5"
alias wcp=wl-copy
alias :wq=exit
alias py=python3
#history and stuff
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history
export PATH="$PATH:/sbin"
export TERMINAL='/usr/bin/footclient'
# Basic auto/tab complete:
autoload -U compinit 
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' menu select
setopt MENU_COMPLETE
compinit

function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

colorscript random
eval "$(starship init zsh)"

# To add support for TTYs this line can be optionally added.
export PATH="$PATH:$HOME/.config/composer/vendor/bin"
export PATH=$HOME/.local/bin:$PATH
eval "$(atuin init zsh)"
#syntax-highlighting
source ~/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
