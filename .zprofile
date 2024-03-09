if [[ "$(tty)" == "/dev/tty1" ]]; then
	export XDG_CURRENT_DESKTOP=sway
	export MOZ_ENABLE_WAYLAND=1
	export QT_QPA_PLATFORM=wayland
	export SDL_VIDEODRIVER=wayland
	export CLUTTER_BACKEND=wayland
	export GDK_BACKEND=wayland
	export BEMENU_BACKEND=wayland
	exec sway --unsupported-gpu
fi
