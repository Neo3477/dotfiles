#!/bin/bash

SPACE_ID="$1"
FOCUSED_WORKSPACE="$AEROSPACE_FOCUSED_WORKSPACE"

if [ "$SPACE_ID" = "$FOCUSED_WORKSPACE" ]; then
    sketchybar --set space.$SPACE_ID icon.color=0xff89a4fb
else
    sketchybar --set space.$SPACE_ID icon.color=0xfff38ba8
fi
