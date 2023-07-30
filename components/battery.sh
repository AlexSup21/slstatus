#!/bin/sh

batt="$(cat /sys/class/power_supply/BAT0/capacity)"


if (( $batt >= "95" )); then
	icon="󰁹"
elif (( $batt >= "85" )); then
	icon="󰂂"
elif (( $batt >= "75" )); then
	icon="󰂁"
elif (( $batt >= "65" )); then
	icon="󰂀"
elif (( $batt >= "55" )); then
	icon="󰁿"
elif (( $batt >= "45" )); then
	icon="󰁾"
elif (( $batt >= "35" )); then
	icon="󰁽"
elif (( $batt >= "25" )); then
	icon="󰁼"
elif (( $batt >= "15" )); then
	icon="󰁻"
elif (( $batt >= "5" )); then
	icon="󰁺"
else 
	icon="󰂎"
fi


echo $icon 
