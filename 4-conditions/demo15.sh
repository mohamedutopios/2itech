#!/bin/bash

age=19
nom="Alice"

if [ "$age" -ge 18 ] && [ "$nom" = "Michel" ]; then
    echo "Michel est majeur"
else 
    echo "Condition non respecté"
fi

if [ "$nom" = "Alice" ] || [ "$nom" = "Michel" ]; then
    echo "Salut, $nom"
else 
    echo "Je ne vous connais pas"
fi