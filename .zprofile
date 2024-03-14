if [[ "$(tty)" == "/dev/tty1" ]]; then
	export XDG_CURRENT_DESKTOP=sway
	exec sway --unsupported-gpu
fi
