#!/bin/bash

i3status -c ~/.i3/i3status.conf | while :
do
    read line
    layout=$(xkb-switch)
    echo "  $layout | $line" || exit 1
done
