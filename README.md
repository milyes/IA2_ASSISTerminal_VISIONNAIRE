
# 📚 Module Emprunts IA – NetSecurePro

Ce module fait partie du projet **IA2_ASSISTerminal_VISIONNAIRE** et fournit une API FastAPI pour la gestion intelligente des emprunts (objets, équipements, livres, etc.).

## 🔧 Fonctionnalités principales

- ✅ Interface Web simple (HTML) pour ajouter/lister des emprunts
- ✅ Base SQLite (`emprunts.db`)
- ✅ API REST avec FastAPI
- ✅ Script de lancement automatique (Linux/Termux)
- ✅ Compatible WebView Flutter / Interface mobile IA

---

## 📂 Structure des fichiers

```
emprunts_ia/
├── apidzemprunts.py           # Serveur FastAPI principal
├── templates/
│   └── index.html             # Interface HTML embarquée
├── run_emprunts_api.sh        # Script bash de lancement
├── emprunts.db                # Base SQLite (créée automatiquement)
└── README.md                  # Ce fichier
```

---

## 🚀 Lancement rapide (Termux / Linux / PC)

```bash
pip install fastapi uvicorn jinja2
bash run_emprunts_api.sh
```

📍 Accès à l'interface : [http://127.0.0.1:8000](http://127.0.0.1:8000)

---

## 🌐 Intégration recommandée

- Flutter WebView → vers `http://127.0.0.1:8000`
- API REST pour apps mobiles / dashboards
- Future extension IA :
  - 🔮 Analyse GPT des emprunts
  - 🗣️ Ajout TTS / STT (vocal IA)
  - 📄 Export PDF des rapports d’emprunt

---

## 🧠 Auteur & Projet

- Projet principal : **NetSecurePro IA**
- Dépôt GitHub : [github.com/milyes/IA2_ASSISTerminal_VISIONNAIRE](https://github.com/milyes/IA2_ASSISTerminal_VISIONNAIRE)
- Auteur : **Zoubirou Mohammed Ilyes**  
  [ORCID](https://orcid.org/0009-0007-7571-3178)

---

🛡️ *Ce module fait partie de l’écosystème sécurisé IA NetSecurePro*
