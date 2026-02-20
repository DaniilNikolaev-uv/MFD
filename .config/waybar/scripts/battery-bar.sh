#!/usr/bin/env bash
# Output Waybar JSON for battery indicator bar (class + tooltip)

bat="/sys/class/power_supply/BAT0"
[ -d "$bat" ] || bat="/sys/class/power_supply/BAT1"
[ -d "$bat" ] || { echo '{"class":"unknown","alt":"N/A"}'; exit 0; }

cap=$(cat "$bat/capacity" 2>/dev/null || echo 0)
status=$(cat "$bat/status" 2>/dev/null || echo Unknown)

class="discharging"
case "$status" in
  Charging) class="charging" ;;
  Full)     class="full" ;;
  Discharging)
    [ "$cap" -le 15 ] && class="critical"
    [ "$cap" -le 25 ] && [ "$cap" -gt 15 ] && class="warning"
    ;;
esac

echo "{\"class\":\"$class\",\"alt\":\"$cap% $status\"}"
