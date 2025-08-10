#!/bin/bash

# Capture output of pidof swappy
pids=$(pidof swappy)

if [[ -z "$pids" ]]; then
  # No swappy process running
  if [[ -f /tmp/latest-screenshot.png ]]; then
    swappy -f /tmp/latest-screenshot.png
  else
    notify-send "No screenshot found" "/tmp/latest-screenshot.png does not exist"
  fi
else
  # swappy is running, kill it
  pkill swappy
fi

