#!/bin/bash
filename="data.csv"
count=$(tail -n +2 "$filename" | wc -l)
echo "Le nombre de ligne du fichier est de : $count"