#!/bin/sh
#
#  Generate a wallpaper with some static
#        github.com/GaugeK/dots
#

touch "$HOME/.cache/walgen.png"

fi="$HOME/.cache/walgen.png"

convert -size 128x128 canvas:"$1" -separate -seed 1000 \
    -attenuate 0.13 +noise gaussian -combine -colorspace sRGB "$fi"

feh --no-fehbg --bg-tile "$fi"
