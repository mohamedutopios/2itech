#!/bin/bash
i=2
somme=0
while [ $i -le 50 ]; do
    #echo "i : $i"
    somme=$((somme + i))
    ((i+=2))
done

echo "La somme des nombres pairs de 1 à 50 est de : $somme "