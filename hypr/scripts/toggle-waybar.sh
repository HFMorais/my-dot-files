#!/bin/bash

# Script to toggle Waybar: start if not running, kill if running

if pgrep -x "waybar" > /dev/null; then
    pkill waybar
    echo "Waybar killed"
else
    waybar &
    echo "Waybar started"
fi