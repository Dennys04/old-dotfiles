#!/bin/bash


#Kill all the polybar process
killall -q polybar


#Execute the polybar
polybar example 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar launched..."
