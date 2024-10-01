#!/bin/bash
i=1

while [ $i -le 5 ]; do
    echo "Nombre :  $i"
    i=$((i+1))
    #let i++
done
