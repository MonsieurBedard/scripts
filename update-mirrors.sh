#!/usr/bin/env bash

# Script to update pacman mirrorlist

curl -s "https://www.archlinux.org/mirrorlist/?country=CA&country=US&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist

cat /etc/pacman.d/mirrorlist
