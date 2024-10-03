#!/bin/bash

dossier_source="Dossier1"

mkdir -p "$dossier_source/Medias"
mkdir -p "$dossier_source/Docs"
mkdir -p "$dossier_source/Travail"

echo "$dossier_source"

for file in "$dossier_source"/*; do

    if [[ -f $file  ]]; then

        extension="${file##*.}"

        case $extension in
            jpg|png|mp4)
            mv "$file" "$dossier_source/Medias/"
            ;;
            docx|pptx|txt|pdf)
            mv "$file" "$dossier_source/Docs/"
            ;;
            log|sh|csv)
            mv "$file" "$dossier_source/Travail/"
            ;;
            *)
            echo "Extension non reconnue $file"
            ;;
        esac
    fi
done

echo Fichiers triés avec succès.