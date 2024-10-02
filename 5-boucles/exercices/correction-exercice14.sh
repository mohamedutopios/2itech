#!/bin/bash
 
# Fichiers pour stocker les nombres pairs et impairs
fichier_pairs="nombres_pairs.txt"
fichier_impairs="nombres_impairs.txt"
 
# Vider les fichiers avant de commencer
> "$fichier_pairs"
> "$fichier_impairs"
 
while true; do
  # Demande de saisie à l'utilisateur
  read -p "Entrez un nombre (ou 'q' pour quitter) : " nombre
  
  # Vérifie si l'utilisateur souhaite quitter
  if [[ "$nombre" == "q" ]]; then
    echo "Fin de la saisie."
    break
  fi
  
  # Vérifie si la saisie est un nombre valide
  if ! [[ "$nombre" =~ ^[0-9]+$ ]]; then
    echo "Veuillez entrer un nombre valide."
    continue
  fi
  
  # Tri des nombres en fonction de leur parité
  if (( nombre % 2 == 0 )); then
    echo "$nombre" >> "$fichier_pairs"
    echo "Nombre pair ajouté dans $fichier_pairs"
  else
    echo "$nombre" >> "$fichier_impairs"
    echo "Nombre impair ajouté dans $fichier_impairs"
  fi
done
 
echo "Résultat :"
echo "Nombres pairs : $(cat $fichier_pairs)"
echo "Nombres impairs : $(cat $fichier_impairs)"
 
 
# #!/bin/bash
 
# # Fichiers pour stocker les nombres pairs et impairs
# fichier_pairs="nombres_pairs.txt"
# fichier_impairs="nombres_impairs.txt"
 
# # Vider les fichiers avant de commencer
# > "$fichier_pairs"
# > "$fichier_impairs"
 
# # Initialisation d'une variable pour continuer la boucle
# encore="oui"
 
# while [[ "$encore" == "oui" ]]; do
#   # Demande de saisie à l'utilisateur
#   read -p "Entrez un nombre (ou 'q' pour quitter) : " nombre
  
#   # Vérifie si l'utilisateur souhaite quitter
#   if [[ "$nombre" == "q" ]]; then
#     echo "Fin de la saisie."
#     encore="non"
#   else
#     # Vérifie si la saisie est un nombre valide
#     if [[ "$nombre" =~ ^[0-9]+$ ]]; then
#       # Tri des nombres en fonction de leur parité
#       if (( nombre % 2 == 0 )); then
#         echo "$nombre" >> "$fichier_pairs"
#         echo "Nombre pair ajouté dans $fichier_pairs"
#       else
#         echo "$nombre" >> "$fichier_impairs"
#         echo "Nombre impair ajouté dans $fichier_impairs"
#       fi
#     else
#       echo "Veuillez entrer un nombre valide."
#     fi
#   fi
# done
 
# echo "Résultat :"
# echo "Nombres pairs : $(cat $fichier_pairs)"
# echo "Nombres impairs : $(cat $fichier_impairs)"