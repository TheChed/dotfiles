#!/usr/bin/zsh

# Input your main keyboard device from 'hyprctl devices'
# e.g. asus-keyboard
DEVICE='nuphy-air96'

# Here we parse active keymap, take only 2 first chars and lower their case
LAYOUT=`hyprctl devices | grep -A 3 "$DEVICE" | grep "active keymap" | tail -n 1 | awk '{print tolower(substr($5,1,4))}'`

# Just output, you can change it like you want :)
echo " : $LAYOUT"
