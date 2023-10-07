#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar bottom --config=/home/random/.config/polybar/polybar.conf 2>&1 | tee -a /tmp/polybar1.log & disown
polybar top --config=/home/random/.config/polybar/polybar.conf 2>&1 | tee -a /tmp/polubar2.log & disown

echo "Bars launched..."

