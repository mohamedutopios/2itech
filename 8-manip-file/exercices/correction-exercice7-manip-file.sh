#!/bin/bash

# "^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$"

filename="data.csv"

while IFS=',' read -r id first_name last_name email gender ip_address
do
    if ! [[ "$email" =~ ^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z]{2,}+$ ]]; then
        echo "ID: $id | Name : $first_name | Prenom : $last_name | Email : $email | gender : $gender | Ip : $ip_address "
    fi
done < "$filename"