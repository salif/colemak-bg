#!/usr/bin/env sh

BG_PATH=/usr/share/X11/xkb/symbols/bg
EVDEV_PATH=/usr/share/X11/xkb/rules/evdev.xml
BACKUP_PATH=./old

mkdir -p $BACKUP_PATH
cp $BG_PATH $BACKUP_PATH/
cp $EVDEV_PATH $BACKUP_PATH/
