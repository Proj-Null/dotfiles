alias dotgit='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' 
alias ls='ls --color=auto'
alias vi='nvim'
alias fetch='fastfetch'
alias grep='grep --color=auto'
eval "$(starship init zsh)"
alias tuxfetch='neofetch --ascii "$(cowsay -f tux $(fortune))"' 
alias removeorphans='pacman -Qtdq |sudo pacman -Rns '
alias ..="cd .."
alias ping="ping -c 5"
alias xamppall="sudo xampp start"
alias xamppsql="sudo xampp startmysql"
# Enable colors
autoload -U colors && colors
#history and stuff
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history
# Basic auto/tab complete:
autoload -U compinit 
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' menu select
setopt MENU_COMPLETE
compinit

# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

#run fastfetch on startup
fastfetch
# To add support for TTYs this line can be optionally added.
export PATH="$PATH:$HOME/.config/composer/vendor/bin"
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
