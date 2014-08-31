#!/bin/bash
xpra start --start-child="Xephyr :1 -ac -screen 800x600" :100
DISPLAY=:0 xdm
