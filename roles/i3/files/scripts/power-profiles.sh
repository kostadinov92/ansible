#!/bin/bash
# Power profile switcher using rofi and powerprofilesctl
CURRENT=$(powerprofilesctl get 2>/dev/null)
[ -z "$CURRENT" ] && notify-send "Power Profiles" "powerprofilesctl not available" && exit 1

CHOICE=$(printf "power-saver\nbalanced\nperformance" | \
    rofi -dmenu -p "Power profile ($CURRENT)" -no-custom)

[ -n "$CHOICE" ] && powerprofilesctl set "$CHOICE" && \
    notify-send "Power Profile" "Switched to $CHOICE"
