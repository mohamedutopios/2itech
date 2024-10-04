#!/bin/bash

count_female=0
count_male=0
filename="data.csv"

> "$emailfile"

while IFS=',' read -r id first_name last_name email gender ip_address
do
   if [ "$gender" == "Male" ]; then
        ((count_male++))
    elif [ "$gender" == "Female" ]; then
         ((count_female++))
    fi
done < <(tail -n +2 "$filename")

echo "Le nombre de femme : $count_female et le nombre d'hommes : $count_male"