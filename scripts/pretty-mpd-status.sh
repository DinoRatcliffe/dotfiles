#! /bin/bash
ISRUNNING=$(systemctl status --user mpd | grep "Active: active (running)" | wc -l)
if [ $ISRUNNING -eq 0 ]
then
    echo "MPD: OFFLINE"
else
#    STATUS=$(sed -n -e 4p ~/.config/mpd/state | sed 's/state: //') # horrid
    CURRENT=$(mpc current)
    echo -e "MPD: $CURRENT"
fi
