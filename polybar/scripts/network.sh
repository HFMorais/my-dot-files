#!/bin/bash
output=""

interface=$(ip route show default | awk '/default/ {print $5}')
if [ -z "$interface" ]; then
    output="offline"
else
    output=$interface
fi

if yay -Q | grep -q "nordvpn"; then
    if nordvpn status | grep -q "Status: Connected"; then
         output=${output}"%{T2} "
    fi
fi

printf "%s" "$output"
