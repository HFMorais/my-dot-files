#!/bin/bash

bat0_value=$(cat /sys/class/power_supply/BAT0/capacity)
bat1_value=$(cat /sys/class/power_supply/BAT1/capacity)

charging=$(cat /sys/class/power_supply/AC/online)

bat_medium=$(($bat0_value + $bat1_value))
bat_total_value=$((bat_medium / 2))

output_value=""
output_icon=""
if [ $bat_total_value -gt 94 ]; then
    output_value="Full"
    output_icon="  "
elif [ $bat_total_value -gt 80 ]; then
    output_value="$bat_total_value%"
    output_icon="  "
elif [ $bat_total_value -gt 60 ]; then
    output_value="$bat_total_value%"
    output_icon="  "
elif [ $bat_total_value -gt 40 ]; then
    output_value="$bat_total_value%"
    output_icon="  "
elif [ $bat_total_value -gt 15 ]; then
    output_value="$bat_total_value%"
    output_icon="  "
else
    output_value="$bat_total_value%"
    output_icon="  "
fi

if [ $charging -eq 1 ]; then
    output_icon=" "
fi

printf "%s" "$output_icon$output_value"