#!/bin/bash

# Sensor name in lm-sensors
sensor_name="Tccd1"

temp_value=$(sensors | grep "$sensor_name" | awk '{print $2}' | tr -d '+')
printf "%s" "$temp_value"