# Architecture du pipeline Yelp

## 1. Ingestion
- Source : dataset Yelp JSON (business, review, user)
- Chargement dans HDFS (`/user/hive/warehouse/yelp/{business,reviews,users}`)
- Script : `scripts/01_ingest.sh`

## 2. Modélisation Hive
- Tables externes JSON via `hql/00_create_external_tables.hql`
- Table ORC partitionnée via `hql/10_transform_reviews.hql`
- Indexation et performance : partitions (année, mois), compression Snappy

## 3. Traitement analytique
- Agrégations métier via `hql/20_aggregates_by_city.hql`
- Table résultats : `yelp.business_metrics_city`

## 4. Orchestration
- `scripts/02_run_hive.sh` pour exécuter 3 étapes principales
- Évolution : ajouter DAG Airflow `dags/yelp_pipeline.py`

## 5. Exploitation et visualisation
- Notebooks : `notebooks/yelp_exploration.ipynb`
- Outils BI : Metabase/Tableau depuis Hive
