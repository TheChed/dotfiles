#!/bin/sh
# works on any init system
# requirements: dmenu, xorg-setxkbmap
icon=" "
kb="$(setxkbmap -query | grep -A 2 -P 'layout:\s*\K\w+' | awk '{print $2}')" || exit 1

echo "$icon $kb"
