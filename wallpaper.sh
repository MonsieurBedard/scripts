#!/bin/sh

# Change the wallpaper using rofi and feh

DIRECTORY="/home/alexandre/Images/Wallpapers"

IMAGE="$(ls -1 $DIRECTORY | rofi -dmenu -e "Wallpaper")"

feh --bg-scale "$DIRECTORY/$IMAGE"
