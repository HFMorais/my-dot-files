#!/bin/bash
# Check for hyprlock installed
if command -v hyprlock &> /dev/null; then
    # hyprlock is installed, use it
    hyprlock
else
    # Otherwise lock with swaylock and a blurred image   
    # Take a screenshot
    grim /tmp/screen.png
    # Blur the screenshot
    convert /tmp/screen.png -blur 0x8 /tmp/screen_blur.png
    # hyprlock is not installed, fallback to swaylock
    swaylock -i /tmp/screen_blur.png
    # Optional: clean up
    rm /tmp/screen.png /tmp/screen_blur.png
fi
