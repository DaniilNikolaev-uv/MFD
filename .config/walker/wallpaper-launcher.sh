#!/bin/bash

WALLPAPER_DIR="$HOME/Pictures/Wallpapers"

# Проверка существования директории
if [ ! -d "$WALLPAPER_DIR" ]; then
    echo "Ошибка: Директория $WALLPAPER_DIR не найдена"
    exit 1
fi

# Поиск обоев и кэширование результата
WALLPAPERS=$(find "$WALLPAPER_DIR" -type f \( -name "*.jpg" -o -name "*.png" -o -name "*.jpeg" -o -name "*.webp" \))

if [ -z "$WALLPAPERS" ]; then
    echo "Ошибка: Обои не найдены в $WALLPAPER_DIR"
    exit 1
fi

# Выбор обоев через walker
selected=$(echo "$WALLPAPERS" | xargs -I{} basename {} | walker --dmenu --placeholder "Выбрать обои...")

[ -z "$selected" ] && exit 0

# Полное изображение
wallpaper_path="$WALLPAPER_DIR/$selected"

# Проверка существования файла
if [ ! -f "$wallpaper_path" ]; then
    echo "Ошибка: Файл $wallpaper_path не найден"
    exit 1
fi

# Применение обоев
swww img "$wallpaper_path" --transition-type wipe