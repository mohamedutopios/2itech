#!/bin/bash

filename="data.csv"
echo "Données des utilisateurs de sexe féminins : "
while IFS=',' read -r id first_name last_name email gender ip_address
do
    if [ "$gender" == "Female"  ]; then
        echo "ID: $id | Name : $first_name | Prenom : $last_name | Email : $email | gender : $gender | Ip : $ip_address "
    fi
done < "$filename"