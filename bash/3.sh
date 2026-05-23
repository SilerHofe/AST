#!/bin/bash
for file in "$@"; do
    if [ ! -f "$file" ]; then
        echo "$file: файл не существует" >&2
    else
        lines=$(wc -l < "$file")
        echo "$file: $lines"
    fi
done