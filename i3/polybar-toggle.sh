#!/bin/bash

pgrep -x polybar &> /dev/null

if [[ $? -eq 0 ]]; then
  killall polybar
else
  polybar bar1 &
  polybar bar2 &
fi
