#!/bin/sh

# Update icon based on selection state
if [ "$SELECTED" = "true" ]; then
    sketchybar --set "$NAME" icon="" icon.color=0xffa6e3a1
else
    sketchybar --set "$NAME" icon="" icon.color=0xffffffff
fi
