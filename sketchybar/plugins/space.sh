#!/bin/sh

workspace="$1"
focused_workspace="${FOCUSED_WORKSPACE:-$(aerospace list-workspaces --focused 2>/dev/null)}"

if [ "$workspace" = "$focused_workspace" ]; then
    sketchybar --set "$NAME" icon="" icon.color=0xffeff1f5
else
    sketchybar --set "$NAME" icon="" icon.color=0xffeff1f5
fi
