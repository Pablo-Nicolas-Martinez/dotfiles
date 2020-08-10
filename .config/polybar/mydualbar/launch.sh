#!/usr/bin/env sh

# Terminate all running bar instances
killall -q polybar

# Wait for processes to have ended
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch both bars
polybar firsttop -c ~/.config/polybar/mydualbar/config-top.ini &
polybar firstbottom -c ~/.config/polybar/mydualbar/config-bottom.ini &
