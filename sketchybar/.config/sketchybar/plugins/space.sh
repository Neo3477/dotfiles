#!/bin/sh

# The $SELECTED variable is available for space components and indicates if
# the space invoking this script (with name: $NAME) is currently selected:
# https://felixkratz.github.io/SketchyBar/config/components#space----associate-mission-control-spaces-with-an-item

# sketchybar --set "$NAME" background.drawing="$SELECTED"
space_number=$1

if [ "$SELECTED" = "true" ]; then
  sketchybar --set $NAME icon.color=0xff458588  # Grüne Farbe für aktiven Space
else
  sketchybar --set $NAME icon.color=0xfffb4934  # Rote Farbe für inaktive Spaces
fi