#!/bin/bash
current=$(< /sys/class/backlight/intel_backlight/brightness)
new=$(expr $current + $1) 

if [ $new -lt 1 ]
then
    new=0
fi

echo $new | sudo tee /sys/class/backlight/intel_backlight/brightness

