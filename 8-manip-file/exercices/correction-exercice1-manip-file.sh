#!/bin/bash

filename="data.csv"

while IFS=',' read -r id first_name last_name email gender ip_address
do
    echo "ID: $id | Name : $first_name | Prenom : $last_name | Email : $email | gender : $gender | Ip : $ip_address "
done < "$filename"