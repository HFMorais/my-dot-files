#!/bin/bash

sensor_path="/sys/class/hwmon/hwmon1/temp1_input"
sensor_value=$(cat $sensor_path)

printf "%sºC" "$((sensor_value / 1000))"