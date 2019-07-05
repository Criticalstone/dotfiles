#!/bin/bash
#
# Quickly switch between a given keyboard layout and the US Qwerty one

OTHER_LAYOUT="gb"
CURRENT="$(setxkbmap -query | grep layout | perl -pe 's/^layout: +([^ ]+)$/$1/')"

if [ "$CURRENT" = "se" ] ; then
    setxkbmap -layout "$OTHER_LAYOUT"
else
    setxkbmap -layout se 
fi
