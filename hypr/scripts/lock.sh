#!/bin/bash
# Take a screenshot
grim /tmp/screen.png
# Blur the screenshot
convert /tmp/screen.png -blur 0x8 /tmp/screen_blur.png
# Lock with the blurred image
swaylock -i /tmp/screen_blur.png
# Optional: clean up
rm /tmp/screen.png /tmp/screen_blur.png
