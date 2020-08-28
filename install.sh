#!/usr/bin/env sh

BG_PATCH_PATH=./linux/bg.patch
BG_PATH=/usr/share/X11/xkb/symbols/bg
EVDEV_PATCH_PATH=./linux/evdev.xml.patch
EVDEV_PATH=/usr/share/X11/xkb/rules/evdev.xml

patch -ub $BG_PATH $BG_PATCH_PATH
patch -ub $EVDEV_PATH $EVDEV_PATCH_PATH
