# Analyse des avis Yelp via Hadoop/Hive | Portfolio Data Engineer / PhD aspirant

## 🎯 Objectif du projet
Ce dépôt présente un projet complet d'ingénierie de données Big Data autour du dataset Yelp Open Data. Il est structuré pour valoriser :
- la capacité à définir et implémenter une architecture ETL scalable,
- l'optimisation de requêtes et de formats de stockage massifs,
- la production d'analyses business exploitables.

> Statut : candidat PhD (aspirant), développement d'un dossier de recherche appliquée en ingénierie des données.

## 🧩 Contexte
Yelp publie des données massives (business, reviews, users). L'objectif est de construire un pipeline complet : ingestion, transformation, modélisation, analyses métiers. Ce projet illustre un cas d'usage reproductible pour des environnements Hadoop/Hive/Spark.

## 📁 Structure du repository
- `hql/` : scripts HiveQL (création de tables, transformations, agrégations)
- `spark/` : code ETL PySpark (extraction, cleaning, enrichissement)
- `data/` : instructions d'usage et schéma, jeux de données d'exemple
- `scripts/` : orchestration (Bash/Python) et tâches d'ingestion
- `notebooks/` : analyses exploratoires, visualisations, rapport d'incubation
- `docs/` : architecture, pipelines, méthodologies
- `reports/` : résultats, KPI, synthèse de recherche
- `tests/` : tests de qualité et validation d'intégrité

## ⚙️ Stack technique
- Hadoop HDFS (stockage distribué)
- Apache Hive (tables externes, partitions, ORC, compression Snappy)
- Apache Spark (ETL, transform, optimisation)
- Airflow (workflow, dépendances), optionnel
- Python (PySpark), SQL, Bash

## 🛠️ Pipeline proposé
1. Ingestion JSON bruts (Yelp data) depuis `data/raw` vers HDFS.
2. Création de tables externes Hive (`business`, `reviews`, `users`).
3. Transformation en format de stockage optimisé (ORC partitionné).
4. Calculs d'agrégats métier et validations (top catégories, tendances, sentiment).
5. Exposition via vues matérialisées et dashboard (Metabase/Tableau).

## 📌 Livrables
- `hql/00_create_external_tables.hql`
- `hql/10_transform_reviews.hql`
- `hql/20_aggregates_by_city.hql`
- `spark/etl_yelp.py` (ETL composable)
- `scripts/01_ingest.sh`, `scripts/02_run_hive.sh`
- `notebooks/yelp_exploration.ipynb`
- `docs/RESEARCH_BRIEF.md`

## 📊 Résultats attendus
- ingestion de plusieurs Go/minute
- réduction du temps de requête par 3+ via partitionnement
- pipeline idempotent et testable
- métriques de données : couverture, qualité, drift

## 🎓 Valeur PhD aspirant
- méthodologie scientifique : questions, hypothèses, métriques, vérification empirique.
- axe de recherche : performance des jointures spatio-temporelles, robustesse du partitionnement dynamique.
- expérimentation reproductible pour publication (NeurIPS / VLDB) : résultats comparatifs, analyse coût-bénéfice.

## ▶️ Reproduction (exemple)
1. Placer les fichiers Yelp JSON dans `data/raw`.
2. `bash scripts/01_ingest.sh`.
3. `hive -f hql/00_create_external_tables.hql`.
4. `spark-submit spark/etl_yelp.py`.
5. `hive -f hql/20_aggregates_by_city.hql`.

## 📖 À propos
Ce projet est structuré pour être réutilisé sur un CV et partagé comme preuve de compétences techniques et méthodologiques pour l'admission en PhD en science des données/ingénierie des données.