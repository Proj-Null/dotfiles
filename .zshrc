alias dotgit='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' 
alias repven='sudo vencord -repair -location "/opt/discord"'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias removeorphans='pacman -Qtdq |sudo pacman -Rns -'
alias ..="cd .."
alias sudo="doas"
alias ping="ping -c 5"
alias :wq=exit
alias test='echo works'
alias hey='php artisan'
alias yeet='git push '
alias ani='fastanime anilist'
export PATH="$PATH:/sbin:/home/nullproj/.config/composer/vendor/bin:/home/nullproj/go/bin:/home/nullproj/.local/bin:/home/nullproj/.npm-global/bin"
# Basic auto/tab complete:
autoload -U compinit 
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' menu select
setopt MENU_COMPLETE
compinit

please() {
  if [ "$1" = "install" ]; then
    shift
    sudo pacman -S "$@"
  elif [ "$1" = "update" ]; then
    yay
  else
    echo "Unknown command: please $@"
    echo "Try: please install [package_name] or please update"
  fi
}

#Generate a paste for any command 
paste() {
    if [ "$#" -eq 0 ]; then
        curl --data-binary @- https://paste.rs | tee >(wl-copy)
    else
        "$@" 2>&1 | curl --data-binary @- https://paste.rs | tee >(wl-copy)
    fi
}

#yazi with cwd function
function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

if [[ "$TERM_PROGRAM" == "vscode" ]]; then
  run() {
    composer run dev "$@"
  }

  start() {
    php artisan reverb:start
  }
runstart() {
  run &     # run in background, output to terminal
  start &   # run in background, output to terminal
  wait      # wait for both to finish
}
fi
colorscript random
eval "$(starship init zsh)"

eval "$(atuin init zsh)"
#syntax-highlighting
source ~/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
