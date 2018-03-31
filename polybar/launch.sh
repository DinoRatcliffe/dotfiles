#! /usr/bin/env sh

# Terminate already funning bar instances
killall -q polybar

# Waui until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar
polybar example &
