#!/usr/bin/env sh

BG_PATH=/usr/share/X11/xkb/symbols/bg
EVDEV_PATH=/usr/share/X11/xkb/rules/evdev.xml

mv $BG_PATH.orig $BG_PATH
mv $EVDEV_PATH.orig $EVDEV_PATH
