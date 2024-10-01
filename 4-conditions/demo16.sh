#!/bin/bash

echo "Entrez moi un jour de la semaine : "
read jour

case $jour in
    "lundi")
        echo "Debut de la semaine !"
        ;;
    "mardi")
        echo "C'est mardi"
        ;;
    "vendredi")
        echo "C'est bientôt le week-end !"
        ;;
    *) 
        echo "Autre jour"
        ;;
esac