#!/bin/bash
# Faite la somme des salaires des employés

filename="salary.csv"

total_salaire=0

while IFS=',' read -r id employee_id first_name last_name job_title salary
do
    total_salaire=$(echo "$total_salaire + $salary" | bc)

done < "$filename"

echo "Le salaire total est de : $total_salaire"