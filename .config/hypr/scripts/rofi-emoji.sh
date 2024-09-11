#!/bin/bash
if pidof rofi >/dev/null; then
    killall rofi
    exit 0
else
	rofi -modi emoji -show emoji
fi
