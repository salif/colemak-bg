#!/usr/bin/env sh

BG_BACKUP_PATH=./old/bg
BG_PATH=/usr/share/X11/xkb/symbols/bg
EVDEV_BACKUP_PATH=./old/evdev.xml
EVDEV_PATH=/usr/share/X11/xkb/rules/evdev.xml

mv $BG_BACKUP_PATH $BG_PATH 
mv $EVDEV_BACKUP_PATH $EVDEV_PATH
