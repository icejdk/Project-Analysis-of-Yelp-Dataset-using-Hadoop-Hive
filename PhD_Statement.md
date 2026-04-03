# PhD Statement - Data Engineering Aspirant

## Contexte
Candidat PhD en Data Engineering / Science des données, je construis un dossier de recherches appliquées autour du traitement Big Data de données clients (Yelp) et l’optimisation des performances de requêtes analytiques.

## Problématique
Comment réduire les temps de latence des rapports transactionnels sur un data lake non structuré (JSON) en utilisant un schéma de stockage adaptatif (Hive ORC partitionné et bucketté) tout en garantissant la reproductibilité des expériences ?

## Hypothèses
1. Les tables partitionnées sur les dimensions temporelles (année/mois) diminuent le volume scanné de >70%.
2. Les tables buckettées sur `business_id` optimalisent les jointures avec les tables de référence.
3. La conversion en ORC/Parquet améliore l’efficience CPU+IO.

## Méthodologie
- expérimentation contrôlée : comparer non partitionné / partitionné / partitionné+bucketté
- métriques : temps d’exécution, CPU, IO, taille disque
- outils : Hive, Spark, Airflow, tests d’intégrité

## Résultats attendus
- pipeline reproductible pour admission PhD
- contributions potentielle : guide d’optimisation prouvé
- base pour publication sur conférence Big Data / Data Engineering.
