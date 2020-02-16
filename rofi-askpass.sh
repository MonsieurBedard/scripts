#!/usr/bin/env sh

pass=$(rofi -lines 0 -password -dmenu -input /dev/null -p "Password" -theme-str '#listview {enabled: false;}')

echo "$pass"
