#!/usr/bin/env sh

BG_PATCH_PATH=./linux/bg
BG_PATH=/usr/share/X11/xkb/symbols/bg
EVDEV_PATCH_PATH=./linux/evdev.xml.patch
EVDEV_PATH=/usr/share/X11/xkb/rules/evdev.xml
BACKUP_PATH=./old

mkdir -p $BACKUP_PATH
cp $BG_PATH $BACKUP_PATH/
cp $EVDEV_PATH $BACKUP_PATH/

cat $BG_PATCH_PATH >> $BG_PATH
patch $EVDEV_PATH $EVDEV_PATCH_PATH