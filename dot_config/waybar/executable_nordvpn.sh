#!/bin/sh

STATUS=$(sudo nordvpn status | grep Status | cut -d ' ' -f6)
PING=$(ping 1.1.1.1 -4c2 -i0.1 -U | grep min/avg/max/mdev | cut -d ' ' -f4 | cut -d "/" -f2)

if [ "$STATUS" = "Connected" ]; then
    CITY=$(sudo nordvpn status | grep City | cut -d ' ' -f2)
    echo "  $CITY | $PING ms"
else
    echo "not connected | $PING ms"
fi
