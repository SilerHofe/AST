#!/bin/bash

lc_values=$(env | grep '^LC_' | cut -d= -f2 | sort -u)

count=$(echo -n "$lc_values" | grep -c .)

if [ "$count" -gt 1 ]; then
    echo "Ошибка: переменные LC_* имеют разные значения:" >&2
    env | grep '^LC_' >&2
    exit 1
fi

echo "Все переменные LC_* имеют одинаковое значение"
exit 0