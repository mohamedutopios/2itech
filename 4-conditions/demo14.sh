#!/bin/bash

ls /etc/passwd > /dev/null 2>&1

if [ $? -eq 0 ]; then
    echo "Le fichier existe"
else 
    echo "Le fichier n'existe pas"
fi