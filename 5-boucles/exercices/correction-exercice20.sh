#!/bin/bash
for i in {1..5}; do
dossier="Dossier_$i"
mkdir -p "$dossier"

    for j in {1..2}; do
    sous_dossier="$dossier/SousDossier_$j"
    mkdir -p "$sous_dossier"

    touch "$sous_dossier/fichier_$i$j.jpg"
    touch "$sous_dossier/fichier_$i$j.txt"
    touch "$sous_dossier/fichier_$i$j.ppt"

    done
done

echo "Tous les dossiers, les sous-dossiers et fichier ont été crées"