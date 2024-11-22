#!/bin/bash

SPACE_ID="$1"
FOCUSED_WORKSPACE="$AEROSPACE_FOCUSED_WORKSPACE"

if [ "$SPACE_ID" = "$FOCUSED_WORKSPACE" ]; then
    sketchybar --set space.$SPACE_ID icon.color=0xff83a598
else
    sketchybar --set space.$SPACE_ID icon.color=0xfffb4934
fi
