#!/bin/bash
# Faite la somme des salaires des employés

filename="salary.csv"

while IFS=',' read -r id employee_id first_name last_name job_title salary
do
   # total_salaire=$(echo "$total_salaire + $salary" | bc)+
   if (( $(echo "$salary > 100000" | bc ) )); then
        echo "Id : $id | name : $first_name | salaire :$salary"
    fi
done < "$filename"

