#!/bin/bash

total=0
count=0
while true; do
    read -p "Entrez une note (ou 'x' pour sortir) :  " note
    if [ "$note" = "x" ]; then
        break
    fi
    total=$((total + note))
    count=$(( count + 1))
done 

if [ $count -gt 0 ]; then
    moyenne=$(( total / count ))
    echo "Moyenne : $moyenne"
    if [ $moyenne -ge 18 ]; then
        echo "Mention : Excellent"
    elif [ $moyenne -ge 15 ]; then
        echo "Mention : Très bien"
    elif [ $moyenne -ge 10 ]; then
        echo "Mention : Bien"
    else
        echo "Mention : Insuffisant"
    fi
else 
    echo "Aucune note"
fi