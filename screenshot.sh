#!/bin/bash

# Need rofi and scrot

# Rofi configuration
rofi_command="rofi -width 10 -location 0 -lines 4"

# Option
options=$'Fullscreen\nActive\nSelect\nCancel'

# Command
chosen=$(echo -e "$options" | $rofi_command -dmenu -i -p "Screenshot")

# Path to file
location='/home/alexandre/Images/Screenshots/%Y-%m-%d-%H%M%S-screen.png'

# Result
if [[ $chosen = "Fullscreen" ]]; then
    scrot $location
elif [[ $chosen = "Active" ]]; then
    scrot -u $location
elif [[ $chosen = "Select" ]]; then
    scrot -s $location
fi