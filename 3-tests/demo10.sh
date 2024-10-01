#!/bin/bash

fichier="/Users/mohamedaijjou/Documents/formation/2itech/3-tests/test.txt"

[ -e "$fichier" ] && echo "le fichier $fichier existe" || echo "le fichier $fichier n'existe pas"
[ -d "$fichier" ] && echo "il s'agit d'un dossier" || echo "Il ne s'agit pas d'un dossier"
[ -r "$fichier" ] && echo "Le fichier est lisible" || echo "Il n'est pas lisible"
[ -s "$fichier" ] && echo "Le fichier n'est pas vide" || echo "Il est vide"
[ -w "$fichier" ] && echo "Le fichier est disponible en ecriture" || echo "Il n'est pas disponible en ecriture"
[ -x "$fichier" ] && echo "Le fichier est executable" || echo "Il n'est pas executable"

