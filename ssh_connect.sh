echo "[SSH Connect] Lancement d'une connexion distante simulée..."
read -p "Entrez l'adresse IP : " IP
read -p "Entrez l'utilisateur : " USER
ssh $USER@$IP
