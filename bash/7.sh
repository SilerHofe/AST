#!/bin/bash

IFS=':' read -ra PATHS <<< "$PATH"

for dir in "${PATHS[@]}"; do
    if [ -d "$dir" ]; then
        count=$(ls -1 "$dir" 2>/dev/null | wc -l)
    else
        count=0
    fi
    echo "$dir => $count"
done