#!/bin/bash
output=""
if ip link show | grep -q "enp6s0.*state UP"; then
    output="%{T4} %{T5}enp6s0"
else
    output="%{T4} %{T5}Offline"
fi

if paru -Q | grep -q "nordvpn"; then
    if nordvpn status | grep -q "Status: Connected"; then
         output=${output}" "
    fi
fi

printf "%s" "$output"
