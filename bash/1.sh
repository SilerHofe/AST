#!/bin/bash
FILENAME="$1"
TIMEFRAME="$2"

for ((i = 0; i < TIMEFRAME; i++)); do
    TIMESTAMP=$(date +"%d.%m.%y %H:%M")
    LOAD=$(cat /proc/loadavg)
    echo "$TIMESTAMP = $LOAD" >> "$FILENAME"
    sleep 1
done