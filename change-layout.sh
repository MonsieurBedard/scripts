#!/usr/bin/env sh

# Change keyboard layut on the fly

CURRENT=$(setxkbmap -query | grep layout | awk '{print $2}')

if [ "$CURRENT" = "us" ]; then
    setxkbmap ca
else
    setxkbmap us
fi
