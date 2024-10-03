### Crontab : Qu'est-ce que c'est ?
 
Le **crontab** (contraction de "cron table") est un fichier de configuration utilisé pour planifier l'exécution de tâches récurrentes (appelées **jobs**) sur un système Unix ou Linux. Le système d'exploitation utilise un démon appelé **cron** pour gérer ces tâches en arrière-plan.
 
Les tâches sont programmées en spécifiant à quelle fréquence et à quel moment un script, une commande ou un programme doit être exécuté. C'est extrêmement utile pour l'automatisation de tâches répétitives comme la sauvegarde des données, la mise à jour de systèmes, ou l'envoi d'e-mails à des moments prédéfinis.
 
### Syntaxe de Crontab
 
Chaque ligne d'un fichier crontab suit cette structure :
 
```
* * * * * commande
| | | | |
| | | | +--- Jour de la semaine (0 - 7) (dimanche = 0 ou 7)
| | | +----- Mois (1 - 12)
| | +------- Jour du mois (1 - 31)
| +--------- Heure (0 - 23)
+----------- Minute (0 - 59)
```
 
### Détails des champs :
 
1. **Minute** : de 0 à 59 (ex. `15` = à la 15ème minute).
2. **Heure** : de 0 à 23 (ex. `14` = à 14h, soit 2 PM).
3. **Jour du mois** : de 1 à 31 (ex. `5` = le 5ème jour du mois).
4. **Mois** : de 1 à 12 (ex. `11` = novembre).
5. **Jour de la semaine** : de 0 à 7, où `0` et `7` représentent dimanche, `1` lundi, etc.
 
### Utilisation basique de `crontab`
 
- **Voir les crons de l'utilisateur :**
 
  ```bash
  crontab -l
  ```
 
- **Éditer les crons :**
 
  ```bash
  crontab -e
  ```
 
- **Supprimer tous les crons :**
 
  ```bash
  crontab -r
  ```
 
### Exemples d'utilisation de `crontab`
 
1. **Exécuter un script tous les jours à 2h30 :**
 
   ```bash
   30 2 * * * /chemin/vers/script.sh
   ```
 
2. **Exécuter un script toutes les heures :**
 
   ```bash
   0 * * * * /chemin/vers/script.sh
   ```
 
3. **Exécuter un script tous les lundis à 8h du matin :**
 
   ```bash
   0 8 * * 1 /chemin/vers/script.sh
   ```
 
4. **Exécuter un script toutes les 5 minutes :**
 
   ```bash
   */5 * * * * /chemin/vers/script.sh
   ```
 
5. **Exécuter un script tous les premiers du mois à minuit :**
 
   ```bash
   0 0 1 * * /chemin/vers/script.sh
   ```
 
### Caractères spéciaux
 
- `*` : Signifie "tout" ou "chaque" (ex. `*` pour chaque minute, heure, etc.).
- `,` : Sépare les valeurs pour indiquer plusieurs valeurs (ex. `1,2,5` pour spécifier ces jours).
- `-` : Indique une plage de valeurs (ex. `1-5` pour du lundi au vendredi).
- `/` : Indique un intervalle (ex. `*/10` pour "toutes les 10 minutes").
### Commandes spéciales
 
Crontab supporte également certaines commandes spéciales pour des fréquences courantes :
 
- **@reboot** : Exécuter au démarrage de la machine.
- **@yearly** ou **@annually** : Exécuter une fois par an (équivalent à `0 0 1 1 *`).
- **@monthly** : Exécuter une fois par mois (équivalent à `0 0 1 * *`).
- **@weekly** : Exécuter une fois par semaine (équivalent à `0 0 * * 0`).
- **@daily** ou **@midnight** : Exécuter une fois par jour (équivalent à `0 0 * * *`).
- **@hourly** : Exécuter une fois par heure (équivalent à `0 * * * *`).
 
### Logs et Debug
 
- Les logs des tâches `cron` sont souvent enregistrés dans `/var/log/cron` ou `/var/log/syslog`, selon la configuration de ton système.
- Si une tâche échoue ou ne se comporte pas comme prévu, tu peux rediriger la sortie d'erreurs ou les logs vers un fichier :
 
  ```bash
  * * * * * /chemin/vers/script.sh >> /chemin/vers/log.txt 2>&1
  ```
 
Cela redirige à la fois la sortie standard et les erreurs dans le fichier `log.txt`.
