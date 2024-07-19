alias dotgit='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' 
alias ls='ls --color=auto'
alias fetch='fastfetch'
alias grep='grep --color=auto'
alias tuxfetch='neofetch --ascii "$(cowsay -f tux $(fortune))"' 
alias removeorphans='pacman -Qtdq |sudo pacman -Rns -'
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
# Basic auto/tab complete:
autoload -U compinit 
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' menu select
setopt MENU_COMPLETE
compinit


#run fastfetch on startup
fastfetch
eval "$(starship init zsh)"
# To add support for TTYs this line can be optionally added.
export PATH="$PATH:$HOME/.config/composer/vendor/bin"


export PATH=$PATH:~/.venvs/venv1/bin


#. "$HOME/.atuin/bin/env"

eval "$(atuin init zsh)"

#syntax-highlighting
source ~/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
