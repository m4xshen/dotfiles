#!/bin/sh

if [ "$SENDER" = "volume_change" ]; then
  VOLUME="$INFO"
  # Icons to use
  ICONS=("" "" "󰕾" "󰕾")
  # Set index based on specific thresholds
  if [ "$VOLUME" -eq 0 ]; then
    INDEX=0  # Muted
  elif [ "$VOLUME" -le 6 ]; then
    INDEX=1  # Very low
  elif [ "$VOLUME" -le 13 ]; then
    INDEX=2  # Low
  else
    INDEX=3  # Normal
  fi
  # Get the corresponding icon
  ICON="${ICONS[$INDEX]}"
  sketchybar --set "$NAME" icon="$ICON" label="$VOLUME%"
fi
