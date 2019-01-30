#! /bin/bash
interface=$(netctl list | grep "*" -v | rofi -dmenu | sed -e 's/^[ \t]*//' | sed 's/ /\\ /g')
connect="sudo netctl switch-to $interface"
echo $connect | sh
