#!/usr/bin/env bash

##################################################
## Set wallpaper
##################################################
WALLPAPER_DIR="$HOME/Pictures/Backgrounds/Nord"

# Pick a random image
WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( \
  -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.webp" \
\) | shuf -n 1)

swaybg -i "$WALLPAPER" >/dev/null 2>&1 &

##################################################
## Waybar
##################################################
waybar -c ~/.config/waybar/config-mango.jsonc -s ~/.config/waybar/style.css >/dev/null 2>&1 &
