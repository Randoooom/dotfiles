#!/bin/sh

STATUS=$(sudo nordvpn status | grep Status | cut -d ' ' -f6)
PING=$(ping 1.1.1.1 -4c2 -i0.1 -U | grep min/avg/max/mdev | cut -d ' ' -f4 | cut -d "/" -f2)

if [ "$STATUS" = "Connected" ]; then
    echo " %{F#8fbcbb}%{T7} Connected%{A}%{F-}%{T-} | $PING ms"
else
    echo "%{F#fff}%{T7}not connected%{T-}%{A}%{F-} | $PING ms"
fi
