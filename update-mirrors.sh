#!/usr/bin/env bash

# Script to update pacman mirrorlist

curl -s "https://archlinux.org/mirrorlist/?country=CA&country=US&protocol=http&protocol=https&ip_version=4&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist

cat /etc/pacman.d/mirrorlist
