#!/bin/bash

# RAM-Werte auslesen
mem_total=$(grep MemTotal /proc/meminfo | awk '{print $2}')
mem_available=$(grep MemAvailable /proc/meminfo | awk '{print $2}')
mem_used=$((mem_total - mem_available))
mem_percent=$((mem_used * 100 / mem_total))

# In MB umrechnen
mem_used_mb=$((mem_used / 1024))
mem_total_mb=$((mem_total / 1024))

# Ausgabe formattieren
echo "${mem_used_mb}/${mem_total_mb} MB"
