# Scripts d'orchestration

- `01_ingest.sh` : ingestion des fichiers de `data/raw` vers HDFS
- `02_run_hive.sh` : exécution des scripts HiveQL dans l'ordre
- `cleanup.sh` : purge des tables temporaires / données de staging

## Exemple
```bash
bash scripts/01_ingest.sh
bash scripts/02_run_hive.sh
```
