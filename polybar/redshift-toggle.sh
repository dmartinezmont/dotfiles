#!/bin/sh

pgrep -x "redshift" > /dev/null

if [[ $? -eq 0 ]]; then
        killall redshift
else
        redshift -l 6.284900:-75.608178 &
fi
