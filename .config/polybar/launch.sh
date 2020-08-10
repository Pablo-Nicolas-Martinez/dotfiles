#!/usr/bin/env bash

# End already running bars
killall -q polybar

# Launch the bars one and two
echo "---" | tee -a /tmp/polybar1.log /tmp/ploybar2.log
polybar bar1 >> /tmp/polybar1.log 2>&1 &
polybar bar2 >> /tmp/polybar2.log 2>&1 &

echo "Bars launched"
