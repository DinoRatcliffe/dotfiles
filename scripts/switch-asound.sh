#! /bin/bash

[ -f /home/dino/.asoundrc ] && /usr/bin/unlink /home/dino/.asoundrc

if [[ $1 = "q5" ]]; then
    /usr/bin/ln -s /home/dino/.asoundrc-q5 /home/dino/.asoundrc
#else
#    /usr/bin/mpc pause
fi

/usr/bin/systemctl restart mpd
