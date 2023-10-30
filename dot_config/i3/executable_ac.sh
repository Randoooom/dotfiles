# !/bin/bash

STATUS=$(cat /sys/class/power_supply/BAT0/status)

if [ "$STATUS" = "Charging" ]; then
  $@
fi
