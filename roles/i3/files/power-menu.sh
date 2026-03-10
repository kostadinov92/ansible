#!/bin/bash
chosen=$(echo -e "Lock\nLogout\nSuspend\nReboot\nShutdown" | rofi -dmenu -p "Power" -i)

case "$chosen" in
    Lock) i3lock -c 2E3440 ;;
    Logout) i3-msg exit ;;
    Suspend) systemctl suspend ;;
    Reboot) systemctl reboot ;;
    Shutdown) systemctl poweroff ;;
esac
