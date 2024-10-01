#!/bin/bash
read -p "Entrez le fichier à sauvegarder : " fichier

if [ -e "$fichier" ]; then
    date_suffix=$(date +"%Y%m%d")
    cp $fichier $fichier-$date_suffix
    echo "Sauvegarde de $fichier en tant que $fichier-$date_suffix"
else
    echo "Le fichier n'existe pas"
fi