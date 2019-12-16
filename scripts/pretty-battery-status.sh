#! /bin/bash
for x in /sys/class/power_supply/BAT?
do
    capacity=$(< $x/capacity)
    DISCHARGING=$(grep "Discharging" $x/status | wc -l)
    if [ $DISCHARGING -eq 1 ] 
    then
        echo "BAT: $capacity%"
    else
        echo "CHR: $capacity%"
    fi
done
