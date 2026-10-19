#!/bin/bash
echo "[Scanner IA] Lancement du scan réseau..."
ifconfig | grep "inet " | while read ip; do
  python3 -c "from IA22_CORE import IA22Core; ia=IA22Core(); r=ia.traiter('$ip'); print(f'[IA22] $ip -> {r[\"analyse\"][\"niveau\"]}')"
done
echo "[Scanner IA] Localisation en cours..."
termux-location
