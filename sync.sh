#!/usr/bin/bash
echo "The script to daily sync dotfiles so i don't forget to sync some and endup with broken setups"
/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME fetch
/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME add ~/.config/sway/
/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME commit -m "syncing sway config"
/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME add ~/.config/dunst/
/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME commit -m "syncing dunst config"
/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME add ~/.config/fastfetch/
/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME commit -m "syncing fastfetch config"
/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME add ~/.config/foot/
/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME commit -m "syncing foot config"
/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME add ~/.config/neofetch/
/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME commit -m "syncing neofetch config"
/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME add ~/.config/ptt-fix/
/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME commit -m "syncing ptt-fix config"
/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME add ~/.config/rofi/
/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME commit -m "syncing rofi config"
/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME add ~/.config/swaylock/
/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME commit -m "syncing swaylock config"
/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME add ~/.config/waybar/
/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME commit -m "syncing waybar config"
/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME add ~/.config/wlogout/
/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME commit -m "syncing wlogout config"
/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME add .bashrc
/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME commit -m "syncing  bashrc"
/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME add .zshrc
/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME commit -m "syncing  zshrc"
/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME push