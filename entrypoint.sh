#!/bin/bash
Xvfb :10 -screen 0 1920x1080x24 2>&1 >/dev/null &

# Give Xvfb time to start
sleep 10

DISPLAY=:10 $@
export RESULT=$?

pkill Xvfb

# Give Xvfb time to shutdown
sleep 3

[ -e .X10-lock ] && rm .X10-lock

exit $RESULT
