#!/bin/bash

# Check if there's a window on the __i3_scratch workspace
if swaymsg -t get_tree | jq -e '.. | select(.workspace?.name == "__i3_scratch") | .id' >/dev/null; then
	echo "scratchpad"
else
	echo ""
fi
