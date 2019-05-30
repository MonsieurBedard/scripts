#!/bin/sh

# Need i3lock, scrot and ImageMagick

scrot /tmp/screen.png

convert -blur 0x10 /tmp/screen.png /tmp/screen.png

i3lock -i /tmp/screen.png
