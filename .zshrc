alias dotgit='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' 
alias dotadd='dotgit add .bashrc .zshrc ~/.config/hypr/* ~/.config/dunst/* ~/.config/foot/* ~/.config/swayidle/* ~/.config/swaylock/* ~/.config/waybar/* ~/.config/wlogout/* ~/.config/rofi/* ~/.config/starship.toml'
alias ls='ls --color=auto'
alias vi='nvim'
alias fetch='fastfetch'
alias grep='grep --color=auto'
eval "$(starship init zsh)"
alias tuxfetch='neofetch --ascii "$(cowsay -f tux $(fortune))"' 
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

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

#run fastfetch on startup
fastfetch
# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh
