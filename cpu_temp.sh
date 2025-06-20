#!/bin/bash

# CPU-Temperatur auslesen
raw_temp=$(cat /sys/class/thermal/thermal_zone0/temp)
cpu_temp=$(echo "scale=1; $raw_temp / 1000" | bc)

# Ausgabe
echo "${cpu_temp}°C"
