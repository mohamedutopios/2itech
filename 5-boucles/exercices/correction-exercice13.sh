#!/bin/bash
somme=0
for i in {1..100}; do
  somme=$((somme + i))
done
echo "La somme des nombres de 1 à 100 est : $somme"