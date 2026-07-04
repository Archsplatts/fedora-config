#!/bin/bash

set +e

/usr/libexec/xdg-desktop-portal-wlr >/dev/null 2>&1 &

~/.config/waybar/scripts/dnf-status &

mako >/dev/null 2>&1 &

gammastep >/dev/null 2>&1 &

swaybg -i ~/Images/Wallpapers/crane.png >/dev/null 2>&1 &

waybar -c ~/.config/mango/waybar/config.jsonc -s ~/.config/mango/waybar/style.css >/dev/null 2>&1 &

# Keep clipboard content after app closes
wl-clip-persist --clipboard regular --reconnect-tries 0 &

# Watch clipboard and store history
wl-paste --type text --watch cliphist store &

nm-applet --indicator >/dev/null 2>&1 &

/usr/libexec/xfce-polkit >/dev/null 2>&1 &
