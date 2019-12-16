#!/bin/bash
interface="wlp2s0"
up=$(< /sys/class/net/$interface/carrier)
connection=""
if [ $up -eq 1 ]
then
    status="UP"
    ssid=$(iwgetid -r)
    connection="$ssid"
    ip=$(ifconfig $interface | grep 'inet ' | awk '{print $2}')
    if [ $ip ]
    then
        connection="$ssid >> $ip"
    fi
else
    status="DOWN"
fi
echo "$interface: $status $connection"
