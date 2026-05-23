#!/bin/bash

if [ "$FOO" = "5" ] && [ "$BAR" = "1" ]; then
    echo "Ошибка: выполнение запрещено (FOO=5 и BAR=1)" >&2
    exit 1
fi

FILENAME="$1"

echo "Ожидание файла '$FILENAME'..."

while [ ! -f "$FILENAME" ]; do
    sleep 1
done

echo "Файл '$FILENAME' появился!"