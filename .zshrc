alias dotgit='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' 
alias repven='sudo vencord -repair -location "/opt/discord"'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias removeorphans='pacman -Qtdq |sudo pacman -Rns -'
alias windows="sudo grub-reboot 2 && reboot"
alias ..="cd .."
alias ping="ping -c 5"
alias :wq=exit
alias test='echo works'
alias hey='php artisan'
alias yeet='git push '
#history and stuff
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history
export PATH="$PATH:/sbin"
export PATH="$PATH:/home/nullproj/.config/composer/vendor/bin"
export PATH="$PATH:/home/nullproj/go/bin"
# Basic auto/tab complete:
autoload -U compinit 
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' menu select
setopt MENU_COMPLETE
compinit

#yazi with cwd function
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
export PATH=$HOME/.local/bin:$PATH
eval "$(atuin init zsh)"
#syntax-highlighting
source ~/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

export PATH=$PATH:/home/nullproj/.spicetify
