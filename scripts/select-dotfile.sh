#!/bin/bash
files="zsh\nvim\nxinit\nsxhkd\nranger\nqutebrowser\nncmpcpp\nmpd\ngit\nscripts\nxmodmap\ni3"
chosen=$(echo -e "$files" | dmenu -i)

case "$chosen" in
    zsh) urxvt -e $EDITOR ~/.zshrc & disown;;
    vim) urxvt -e $EDITOR ~/.vimrc & disown;;
    xinit) urxvt -e $EDITOR ~/.xinitrc & disown;;
    sxhkd) urxvt -e $EDITOR ~/.config/sxhkd/sxhkdrc & disown;;
    ranger) urxvt -e $EDITOR ~/.config/ranger/rc.conf & disown;;
    qutebrowser) urxvt -e $EDITOR ~/.config/qutebrowser/config.py & disown;;
    ncmpcpp) urxvt -e $EDITOR ~/.ncmpcpp/config & disown;;
    mpd) urxvt -e $EDITOR ~/.config/mpd/mpd.conf & disown;;
    git) urxvt -e $EDITOR ~/.gitconfig & disown;;
    scripts) urxvt -e $EDITOR ~/.scripts & disown;;
    xmodmap) urxvt -e $EDITOR ~/.Xmodmap & disown;;
    i3) urxvt -e $EDITOR ~/.i3/config & disown;;
esac
