#!/usr/bin/env bash

# Simple menu for optimus-manager

current_mode=$(optimus-manager --print-mode | grep 'Current' | awk '{print $5}')

rofi_command="rofi -width 20 -lines 5"

OPTIONS='Intel\nNvidia\nHybrid\nAuto\nCancel'

CHOICE=$(echo -e "$OPTIONS" | $rofi_command -dmenu -p "Optimus manager" -mesg "Current mode: $current_mode")

if [ "$CHOICE" = "Intel" ]; then
	optimus-manager --switch intel --no-confirm
elif [ "$CHOICE" = "Nvidia" ]; then
	optimus-manager --switch nvidia --no-confirm
elif [ "$CHOICE" = "Hybrid" ]; then
	optimus-manager --switch hybrid --no-confirm
elif [ "$CHOICE" = "Nvidia" ]; then
	optimus-manager --switch auto --no-confirm
fi
