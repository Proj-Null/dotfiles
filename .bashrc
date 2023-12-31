#
# ~/.bashrc
#display sys info
fastfetch
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias dotgit='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' 
alias dotadd='dotgit add .bashrc .zshrc ~/.config/hypr/* ~/.config/dunst/* ~/.config/foot/* ~/.config/swayidle/* ~/.config/swaylock/* ~/.config/waybar/* ~/.config/wlogout/* ~/.config/rofi/* ~/.config/starship.toml'
alias ls='ls --color=auto'
alias vi='nvim'
alias fetch='fastfetch'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
eval "$(starship init bash)"
