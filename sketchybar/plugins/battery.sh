#!/bin/sh

PERCENTAGE="$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)"
CHARGING="$(pmset -g batt | grep 'AC Power')"

if [ "$PERCENTAGE" = "" ]; then
  # No battery present (e.g. Mac mini): hide the item and let volume take
  # over the bracket's left edge padding so it stays symmetric.
  sketchybar --set "$NAME" drawing=off
  sketchybar --set volume padding_left=2
  exit 0
fi

sketchybar --set "$NAME" drawing=on
sketchybar --set volume padding_left=10

# Icons to use for battery levels
ICONS=("󰁺" "󰁻" "󰁼" "󰁽" "󰁾" "󰁿" "󰁿" "󰂀" "󰂁" "󰂂" "󰁹")

# Calculate the index based on the battery percentage
if [ "$PERCENTAGE" -eq 100 ]; then
  INDEX=10  # 100% corresponds to the last icon (󰁹)
else
  INDEX=$(( PERCENTAGE / 10 ))  # Divide the battery range into 11 equal parts
fi

# Get the corresponding icon
ICON="${ICONS[$INDEX]}"

# Use charging icon if the battery is charging
if [[ "$CHARGING" != "" ]]; then
  ICON="󰂄"
fi

# The item invoking this script (name $NAME) will get its icon and label
# updated with the current battery status
sketchybar --set "$NAME" icon="$ICON" label="${PERCENTAGE}%"
