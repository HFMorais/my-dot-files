#!/bin/bash

# Sensor name in lm-sensors
#sensor_name="Tccd1"
#temp_value=$(sensors | grep "$sensor_name" | awk '{print $2}' | tr -d '+')

sensor_path="/sys/class/hwmon/hwmon1/temp3_input"
sensor_value=$(cat $sensor_path)

printf "%sºC" "$((sensor_value / 1000))"