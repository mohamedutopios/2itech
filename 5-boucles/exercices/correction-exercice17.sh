#!/bin/bash

nombre_aleatoire=$((RANDOM % 10 + 1))
echo "$nombre_aleatoire"
while true; do
    read -p "Devinez un nombre entre 1 et 10 : " nombre
    if [ $nombre -eq $nombre_aleatoire ]; then
        echo "Bravo champion, tu as le trouve le nombre mystère : $nombre_aleatoire"
        break
    else 
        echo "Essaye encore !!"
    fi
done