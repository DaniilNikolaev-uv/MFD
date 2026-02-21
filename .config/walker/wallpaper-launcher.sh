#!/bin/bash
WALLPAPER_DIR="$HOME/Pictures/Wallpapers"

selected=$(find "$WALLPAPER_DIR" -type f \( -name "*.jpg" -o -name "*.png" -o -name "*.jpeg" -o -name "*.webp" \) | \
  xargs -I{} basename {} | \
  walker --dmenu --placeholder "Выбрать обои...")

[ -z "$selected" ] && exit 1

swww img "$WALLPAPER_DIR/$selected" --transition-type wipe