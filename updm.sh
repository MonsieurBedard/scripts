#!/usr/bin/env bash

# update pacman mirrorlist

URL="https://archlinux.org/mirrorlist/?country=CA&country=US&protocol=http&protocol=https&ip_version=4&use_mirror_status=on"
FILE="/etc/pacman.d/mirrorlist"

if ! command -v rankmirrors &>/dev/null; then
    echo "rankmirrors could not be found"
    exit
fi

if [ "$EUID" -ne 0 ]; then
    echo "Please run as root"
    exit
fi

echo "Updating mirrors..."

curl -s "$URL" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - >"$FILE"

cat $FILE
