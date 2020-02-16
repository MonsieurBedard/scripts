#!/usr/bin/env bash

# Need rofi and systemd

# Rofi configuration
rofi_command="rofi -lines 6 -width 20"

# Option
options=$'Shutdown\nReboot\nSuspend\nLogout\nLock\nCancel'

# Command
chosen=$(echo -e "$options" | $rofi_command -dmenu -i -p "Power")

# Result
if [[ $chosen = "Logout" ]]; then
	i3-msg exit
	bspc quit
elif [[ $chosen = "Shutdown" ]]; then
	systemctl poweroff
elif [[ $chosen = "Reboot" ]]; then
	systemctl reboot
elif [[ $chosen = "Suspend" ]]; then
	systemctl suspend 
elif [[ $chosen = "Lock" ]]; then
	xsecurelock
fi
