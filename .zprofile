if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
	export EDITOR=nvim
	export XDG_CURRENT_DESKTOP=sway
	exec sway --unsupported-gpu
fi
