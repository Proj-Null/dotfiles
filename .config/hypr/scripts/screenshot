#!/bin/bash

# Function to get the target directory for saving screenshots
getTargetDirectory() {
  test -f "${XDG_CONFIG_HOME:-$HOME/.config}/user-dirs.dirs" && \
    . "${XDG_CONFIG_HOME:-$HOME/.config}/user-dirs.dirs"

  echo "${XDG_SCREENSHOTS_DIR:-${XDG_PICTURES_DIR:-$HOME}}"
}

# Notification command
notify_cmd="notify-send"

# Function to take a screenshot and process it
take_screenshot() {
    local type=$1
    local dir=$(getTargetDirectory)
    local file="screenshot_$(date +%Y%m%d_%H%M%S).png"
    local filepath="$dir/$file"

    if [[ "$type" == "full" ]]; then
        grim "$filepath"
    elif [[ "$type" == "area" ]]; then
        grim -g "$(slurp)" "$filepath"
    else
        echo "Invalid screenshot type"
        exit 1
    fi

    # Copy to clipboard
    wl-copy --type image/png < "$filepath"

    # Send notification
    $notify_cmd "Screenshot taken" "Saved as $file and copied to clipboard"
}

# Main script logic
if [[ "$1" == "-f" ]]; then
    take_screenshot "full"
elif [[ "$1" == "-a" ]]; then
    take_screenshot "area"
else
    echo "Usage: $0 [-f|-a]"
    echo "  -f: Full screen screenshot"
    echo "  -a: Area screenshot"
    exit 1
fi

exit 0
