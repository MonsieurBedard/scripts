#!/usr/bin/env bash

LAYOUT=$(setxkbmap -query | grep layout: | awk '{print $2}')

if [ "$LAYOUT" = "us" ]; then
    setxkbmap ca
else
    setxkbmap us
fi