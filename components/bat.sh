#!/bin/sh

export PATH=$PATH:/usr/local/bin
batt="$(cat /sys/class/power_supply/BAT0/capacity)"


if [ "$batt" -gt "100" ]; then
	icon=">100"
elif [ "$batt" -gt "90" ]; then
	icon=">90"
elif [ "$batt" -gt "80" ]; then
	icon=">80"
elif [ "$batt" -gt "70" ]; then
	icon=">80"
elif [ "$batt" -gt "60" ]; then
	icon=">60"
elif [ "$batt" -gt "50" ]; then
	icon=">50"
elif [ "$batt" -gt "40" ]; then
	icon=">40"
elif [ "$batt" -gt "30" ]; then
	icon=">30"
elif [ "$batt" -gt "20" ]; then
	icon=">20"
elif [ "$batt" -gt "10" ]; then
	icon=">10"
else 
	icon="<10"
fi


echo $icon 
