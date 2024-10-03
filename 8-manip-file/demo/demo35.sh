#!/bin/bash

filename="salary.csv"

while IFS=',' read -r id employee_id first_name last_name job_title salary
do
    if [[ $job_title == "VP Sales" ]]; then
         echo "ID: $id | Prenom : $first_name | Salaire : $salary "
    fi
done < "$filename"
