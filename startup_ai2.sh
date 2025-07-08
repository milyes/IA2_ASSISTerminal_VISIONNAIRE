#!/bin/bash

echo "[IA2] Initialisation de l’environnement..."
OS=$(uname -o)
TERMUX=$(command -v termux-info >/dev/null && echo "true" || echo "false")

echo "[IA2] Chargement du module IA2_ASSISTERMINAL..."
sleep 1

REQUIRED_TOOLS=(curl jq python3 termux-camera-info termux-location figlet)
for TOOL in "${REQUIRED_TOOLS[@]}"; do
    if ! command -v $TOOL &> /dev/null; then
        echo "[⚠️] Outil manquant : $TOOL – Installez-le si nécessaire."
    else
        echo "[✔️] $TOOL détecté"
    fi
done

figlet "IA2 TERMINAL" || echo "--- IA2 TERMINAL ---"

echo "[IA2] Démarrage de la logique IA..."
python3 ia2_engine.py &

echo "[IA2] Analyse des protocoles disponibles..."
PROTOCOLS=("HTTP" "HTTPS" "SSH" "WEBSOCKET")
for PROT in "${PROTOCOLS[@]}"; do
    echo "[+] Protocole supporté : $PROT"
done

echo "[IA2] Menu interactif :"
echo "1. Lancer Vision IA"
echo "2. Connexion distante"
echo "3. Scanner systèmes"
echo "4. Quitter"

read -p "Sélectionnez une option : " OPTION
case $OPTION in
    1) bash vision_module.sh ;;
    2) bash ssh_connect.sh ;;
    3) bash scan_protocols.sh ;;
    4) echo "[IA2] Fermeture..."; exit 0 ;;
    *) echo "[❌] Option invalide." ;;
esac
