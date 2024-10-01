read -p "Entrez un idenitifiant : " identifiant

if grep -q "^$identifiant$" utilisateurs.txt; then 
    echo "Identifiant deja pris"
else
    printf "$identifiant\n" >> utilisateurs.txt
     echo "Identifiant ajouté avec succès"
fi