# Data Directory

Ce dossier contient les données d'exemple et les instructions pour préparer le dataset Yelp.

- `raw/` : fichiers JSON bruts (business.json, review.json, user.json, checkin.json)
- `processed/` : données nettoyées si déjà extraites

## Étapes
1. Télécharger Yelp Open Dataset depuis https://www.yelp.com/dataset
2. Copier les fichiers JSON dans `data/raw`
3. Lancer `bash scripts/01_ingest.sh`
