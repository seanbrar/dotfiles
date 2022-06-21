#!/bin/sh

display=$(xrandr --listactivemonitors | grep "$1" | head -n1 | cut -d' ' -f6)

if [ -n "$display" ]; then
    xrandr --output $display --primary
fi

# Credit to Robby Zambito
# https://robbyzambito.me/posts/how-to-set-primary-x-display-on-sway/
