#!/bin/bash

emailfile=emails.txt
filename="data.csv"

> "$emailfile"

while IFS=',' read -r id first_name last_name email gender ip_address
do
   echo "$email" >> "$emailfile"
done < <(tail -n +2 "$filename")

echo "Les adresses mails : $emailfile"