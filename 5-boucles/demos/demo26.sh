#!/bin/bash

while true; do

read -p "Entrez une valeur (q pour sortir ) : " valeur

if [ $valeur == "q" ]; then
    echo "Fin de la saisie"
    break
fi

if [ $valeur -eq 0 ]; then
    echo "le nombre 0 est ignoré"
    continue
fi

echo "valeur saisie : $valeur" 

done