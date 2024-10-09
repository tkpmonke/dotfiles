#!/bin/bash

WALLPAPER_DIR="/home/turdle/wallpapers"

# Interval in seconds
INTERVAL=15  
# Function to change wallpaper
change_wallpaper() {
    local random_wallpaper=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)
    swww img "$random_wallpaper" --transition-type random
}

# Infinite loop to change wallpaper at intervals
while true; do
    change_wallpaper
    sleep "$INTERVAL"
done
