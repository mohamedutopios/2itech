#!/bin/bash

bonjour(){
local name=$1
echo "Bonjour, $name !"
}

addition() {
    local num1=$1
    local num2=$2
    local sum=$((num1 + num2))
    echo "La somme de $num1 et $num2 est de : $sum"
}

show_menu(){
    echo "Menu : "
    echo "1 - Saluer une personne"
    echo "2 - Faire une addition entre 2 nombre"
    echo "3 - Quitter"
}

show_menu

read -p "Choisissez une option : " option

case $option in 

    1)
    read -p "Entrez un nom : " username
    bonjour "$username"
    ;;

    2)
    read -p "Entrez le premier nombre : " n1
    read -p "Entrez le second nombre : " n2
    addition $n1 $n2
    ;;

    3)
    echo "Quitter le programme..."
    exit 0
    ;;
    *)
    echo "Option non valide.."
    ;;
esac