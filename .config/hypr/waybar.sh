#!/usr/bin/env sh
# Terminate already running bar instances
killall -q "waybar"
killall -q "wbg"
killall -q "polkit-gnome-authentication-agent-1"
killall -q "network-trafic.sh"
killall -q "dunst"

# Wait until the processes have been shut down
while pgrep -x waybar >/dev/null; do sleep 1; done

# Launch main
wbg ~/Pictures/custom_wallpaper.png &
polkit-gnome-authentication-agent-1 &
waybar -c $HOME/.config/hypr/tokyo -s $HOME/.config/hypr/tokyo.css
sleep 2 && pamixer --set-volume 70
