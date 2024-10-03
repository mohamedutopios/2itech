#!/bin/bash

filename="salary.csv"

while IFS=',' read -r id employee_id first_name last_name job_title salary
do
    echo "ID: $id | ID EMPLOYE : $employee_id | Prenom : $first_name | Nom : $last_name | Job : $job_title | Salaire : $salary "
done < "$filename"
