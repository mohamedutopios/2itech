#!/bin/bash

dossier="Dossier1"

mkdir -p "$dossier"

for i in {1..50}; do

    nom_fichier=fichier_$i

    extension=$(shuf -n 1 -e .txt .jpg .pdf .docx .sh .png .pptx .mp4 .log)

    touch "$dossier/$nom_fichier$extension"
done

echo "50 fichiers ont été crées dans le dossier $dossier."

