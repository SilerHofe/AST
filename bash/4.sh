#!/bin/bash

PLANET="$1"

case "$PLANET" in
    Mercury|Меркурий)   echo "0" ;;
    Venus|Венера)       echo "0" ;;
    Earth|Земля)        echo "1" ;;
    Mars|Марс)          echo "2" ;;
    Jupiter|Юпитер)     echo "95" ;;
    Saturn|Сатурн)      echo "146" ;;
    Uranus|Уран)        echo "28" ;;
    Neptune|Нептун)     echo "16" ;;
    *)
        echo "Ошибка: планета '$PLANET' не существует" >&2
        exit 1
        ;;
esac