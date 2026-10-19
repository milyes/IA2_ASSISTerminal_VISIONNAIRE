#!/bin/bash

echo "===== IA2 TERMINAL – MENU VISIONNAIRE ====="
echo "1. Lancer IA2 Engine (Python)"
echo "2. Scan des Protocoles"
echo "3. Module Vision IA"
echo "4. Connexion SSH IA"
echo "5. Quitter"
echo "==========================================="

read -p "Choisissez une option (1-5) : " opt

case $opt in
  1) python ia2_engine.py ;;
  2) ./scan_protocols.sh ;;
  3) ./vision_module.sh ;;
  4) ./ssh_connect.sh ;;
  5) echo "Fermeture du terminal IA2." && exit ;;
  *) echo "Option invalide." ;;
esac

