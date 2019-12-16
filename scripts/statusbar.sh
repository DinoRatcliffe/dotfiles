#!/bin/bash

while true; do
    CPU_T=$(< /sys/devices/platform/coretemp.0/hwmon/hwmon5/temp2_input)
    CPU_TEMP=$(expr "$CPU_T" / 1000)
    CPU_UTIL=$(echo $[100-$(vmstat 1 2|tail -1|awk '{print $15}')])

    MEM_UTIL=$(awk '/^Mem/ {printf("%u%%", 100*$3/$2);}' <(free -m))

    MPD=$(~/.scripts/pretty-mpd-status.sh)
    BATTERY=$(~/.scripts/pretty-battery-status.sh)
    NETWORK=$(~/.scripts/pretty-network-status.sh)
    xsetroot -name "   $MPD  $NETWORK  CPU: $CPU_UTIL% $CPU_TEMP°C  RAM: $MEM_UTIL  $BATTERY  $(date +'%H:%M  %d/%m/%y')   "
    sleep 1s
done
