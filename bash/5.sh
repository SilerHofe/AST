#!/bin/bash

> logs.log  # очищаем/создаём файл

for logfile in /var/log/*.log; do
    if [ -f "$logfile" ]; then
        last_line=$(tail -n 1 "$logfile")
        echo "$logfile: $last_line" >> logs.log
    fi
done