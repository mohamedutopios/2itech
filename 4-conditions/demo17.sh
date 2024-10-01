#!/bin/bash

age=30
citoyen="oui"

if [ $age -ge 18 ]; then
    if [ $citoyen = "oui" ]; then
        echo "Vous allez voter"
    else
        echo "Vous ne pouvez pas voter"
    fi
else
    echo "Vous êtes trop jeune pour voter"
fi