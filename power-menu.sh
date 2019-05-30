#!/bin/bash

# Need rofi and systemd

# Rofi configuration
rofi_command="rofi -width 10 -location 0 -lines 6"

# Option
options=$'Shutdown\nReboot\nSuspend\nLogout\nLock\nCancel'

# Command
chosen=$(echo -e "$options" | $rofi_command -dmenu -i -p "Power Menu")

# Result
if [[ $chosen = "Logout" ]]; then
	i3-msg exit
elif [[ $chosen = "Shutdown" ]]; then
	systemctl poweroff
elif [[ $chosen = "Reboot" ]]; then
	systemctl reboot
elif [[ $chosen = "Suspend" ]]; then
	lockscreen.sh
	systemctl suspend 
elif [[ $chosen = "Lock" ]]; then
	lockscreen.sh
fi