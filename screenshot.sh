#!/bin/bash

# Need rofi and scrot

# Rofi configuration
rofi_command="rofi -width 10 -location 0 -lines 4"

# Option
options=$'Fullscreen\nSelect\nCancel'

# Command
chosen=$(echo -e "$options" | $rofi_command -dmenu -i -p "Screenshot")

# Path to file
location=$"/home/alexandre/Images/Screenshots/$(date +%s)-screen.png"

# Result
if [[ $chosen = "Fullscreen" ]]; then
    maim $location
elif [[ $chosen = "Select" ]]; then
    maim -s $location
fi
