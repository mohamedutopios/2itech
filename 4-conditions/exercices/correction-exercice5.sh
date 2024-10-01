#!/bin/bash

read -p "Entrez le chemin d'un repertoire : " rep

if [ -d "$rep" ]; then
    echo "Taille des fichiers $rep : "
    du -ah "$rep" | sort -h -r
else 
    echo " $rep n'est pas un dossier valide"
fi