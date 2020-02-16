#!/usr/bin/env bash

# Need rofi and maim

# Rofi configuration
rofi_command="rofi -lines 3 -width 20"

# Option
options=$(printf "Fullscreen\nSelect\nCancel")

# Command
chosen=$(echo "$options" | $rofi_command -dmenu -i -p "Screenshot")

# Path to file
location=$"$HOME/Images/Screenshots/$(date +%Y-%m-%d-%H%M%S).png"

# Selection
if [ "$chosen" = "Fullscreen" ]; then
    maim "$location"
    notify-send " Capture d'écran" "$location"
elif [ "$chosen" = "Select" ]; then
    maim -s "$location"
    notify-send " Capture d'écran" "$location"
fi
