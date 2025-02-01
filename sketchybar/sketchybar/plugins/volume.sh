#!/bin/sh

# The volume_change event supplies a $INFO variable in which the current volume
# percentage is passed to the script.

if [ "$SENDER" = "volume_change" ]; then
  VOLUME="$INFO"

  # Icons to use
  ICONS=("" "" "󰕾" "󰕾" "󰕾" "" "" "")

  # Calculate the index based on the volume percentage
  if [ "$VOLUME" -eq 0 ]; then
    INDEX=0  # Muted or 0%
  else
    INDEX=$(( (VOLUME + 12) / 13 ))  # Divide the volume range into 8 equal parts
    INDEX=$(( INDEX < 7 ? INDEX : 7 ))  # Ensure the index doesn't exceed 7
  fi

  # Get the corresponding icon
  ICON="${ICONS[$INDEX]}"

  sketchybar --set "$NAME" icon="$ICON" label="$VOLUME%"
fi
