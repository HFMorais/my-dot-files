#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/Pictures/Backgrounds/Dracula"

# Pick a random image
WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( \
  -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.webp" \
\) | shuf -n 1)

# Restart hyprpaper with the chosen wallpaper
pkill hyprpaper
hyprpaper &
sleep 0.2

hyprctl hyprpaper preload "$WALLPAPER"
hyprctl hyprpaper wallpaper ",$WALLPAPER"
