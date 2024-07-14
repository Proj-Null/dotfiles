#!/bin/bash

notify_cmd_shot="notify-send"
notify_view() {
		if [[ -e "$dir/$file" ]]; then
		${notify_cmd_shot} "Saved & Copied to clipboard."

	else
		${notify_cmd_shot} "Copied to clipboard & Deleted."
	fi
}

# take shots
shot() {
	wl-copy < $(grimshot save output)
	sleep 0.5
	notify_view
}
shotarea() {
	wl-copy < $(grimshot save area) 
	notify_view
}

if [[ "$1" == "-f" ]]; then
	shot
elif [[ "$1" == "-a" ]]; then
	shotarea
else
	echo -e "Available Options : -f -a"
fi
exit 0
