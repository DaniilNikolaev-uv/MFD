#!/bin/bash
DIR="$HOME/Pictures/Wallpapers"
PICS=$(ls $DIR)
CHOICE=$(echo -e "$PICS" | rofi -dmenu -p "Выбрать обои")

if [ -n "$CHOICE" ]; then
    swww img "$DIR/$CHOICE" --transition-type center
fi
