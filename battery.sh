#!/bin/bash

# Function to determine the battery icon based on percentage
battery_icon() {
    local percentage=$1
    local icon=""

    if ((percentage >= 90)); then
        icon=""
    elif ((percentage >= 60)); then
        icon=""
    elif ((percentage >= 30)); then
        icon=""
    elif ((percentage >= 10)); then
        icon=""
    else
        icon=""
    fi

    echo "$icon"
}

battery_percentage=$(cat /sys/class/power_supply/BAT0/capacity)
icon=$(battery_icon $battery_percentage)

echo "$icon $battery_percentage"

