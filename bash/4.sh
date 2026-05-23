#!/bin/bash

PLANET="$1"

case "$PLANET" in
    Mercury|Меркурий)   echo "0" ;;
    Venus|Венера)       echo "0" ;;
    Earth|Земля)        echo "1" ;;
    Mars|Марс)          echo "2" ;;
    Jupiter|Юпитер)     echo "98" ;;
    Saturn|Сатурн)      echo "83" ;;
    Uranus|Уран)        echo "27" ;;
    Neptune|Нептун)     echo "14" ;;
    *)
        echo "Unknown planet"
        ;;
esac