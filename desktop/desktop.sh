#!/bin/bash

DISPLAY=10
SCREEN_SIZE="800x600"
DISPLAY_1=$(( $DISPLAY + 1 ))

sudo -u marc -H bash -c "xpra start :$DISPLAY --start-child=\"Xephyr -ac -screen $SCREEN_SIZE -query localhost -host-cursor -reset -terminate :$DISPLAY_1\" --xvfb=\"Xvfb +extension Composite -screen 0 ${SCREEN_SIZE}x24+32 -nolisten tcp -noreset -auth /home/marc/.Xauthority\" --no-notifications --no-pulseaudio & sleep 5 ; DISPLAY=:$DISPLAY_1 fluxbox &"
