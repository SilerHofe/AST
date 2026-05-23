#!/bin/bash
PATH_ARG="$1"

if [ ! -d "$PATH_ARG" ]; then
    echo "Ошибка: путь '$PATH_ARG' не существует" >&2
    exit 1
fi

for dir in "$PATH_ARG"/*/; do
    if [ -d "$dir" ]; then
        dirname=$(basename "$dir")
        count=$(ls -1 "$dir" | wc -l)
        echo "$count" > "$dirname"
    fi
done