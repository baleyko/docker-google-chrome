#!/usr/bin/env sh
set -e

/usr/bin/Xvfb $DISPLAY -screen 0 1024x768x24 -ac +extension GLX +render -noreset > /dev/null 2>&1 &

while [ -z `pgrep Xvfb` ]; do sleep 1; done

/usr/bin/x11vnc -display $DISPLAY -bg -forever -nopw -quiet -xkb > /dev/null 2>&1 &

while [ -z `pgrep x11vnc` ]; do sleep 1; done

exec google-chrome --no-sandbox
