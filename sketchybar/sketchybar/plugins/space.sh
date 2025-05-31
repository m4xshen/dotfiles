#!/bin/sh

# Update icon based on selection state
if [ "$SELECTED" = "true" ]; then
    sketchybar --set "$NAME" icon="" icon.color=0xffeff1f5
else
    sketchybar --set "$NAME" icon="" icon.color=0xffeff1f5
fi
