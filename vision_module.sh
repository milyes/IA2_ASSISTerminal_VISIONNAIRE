#!/bin/bash
echo "[Vision IA] Capture d'image en cours..."
termux-camera-photo -c 0 ia2_capture.jpg

if [ -f ia2_capture.jpg ]; then
    echo "[✔️] Image capturée : ia2_capture.jpg"
    echo "[IA22] Analyse de l'image en cours..."
    python3 -c "from IA22_CORE import IA22Core; ia=IA22Core(); r=ia.traiter('image ia2_capture.jpg contient interface reseau'); print(f'🔍 {r[\"analyse\"][\"niveau\"]} | Confiance: {r[\"analyse\"][\"confiance\"]} | {r[\"traduction\"]}')"
else
    echo "[✖️] Erreur capture"
fi
