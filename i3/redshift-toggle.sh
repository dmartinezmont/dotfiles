#!/bin/bash

pgrep -x redshift &> /dev/null

if [[ $? -eq 0 ]]; then
    killall redshift
else
    redshift -r &
fi
