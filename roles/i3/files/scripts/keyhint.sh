#!/bin/bash
# Toggle i3 keybinding hints - same key opens and closes
if pkill -f "yad --title=i3 Keybindings"; then
    exit 0
fi
yad --title="i3 Keybindings" --no-buttons --width=700 --height=600 \
    --text-info --fontname="MesloLGS Nerd Font 10" \
    --back=#2E3440 --fore=#D8DEE9 \
    --filename="$HOME/.config/i3/keyhints" 2>/dev/null &
