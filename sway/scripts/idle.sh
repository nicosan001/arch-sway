#!/bin/sh
swayidle \
timeout 300 '~/.config/sway/scripts/lock.sh --grace 10 --fade-in 0' \
timeout 320 'swaymsg "output * dpms off"' \
resume 'swaymsg "output * dpms on"' \
before-sleep '~/.config/sway/scripts/lock.sh --fade-in 0'
