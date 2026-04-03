# Research Brief - Yelp Data Engineering

## Objectif académique
Réaliser une étude expérimentale sur l'impact du schéma Hive (partitionnement, bucketing, format ORC/Parquet) sur les temps de réponse des requêtes analytiques sur un jeu de données Yelp à forte volumétrie.

## Hypothèses
- Le partitionnement sur `review_date` et `city` diminue significativement les scans.
- Le bucketing sur `business_id` améliore les jointures entre `reviews` et `business`.

## Protocole
1. créer 3 variantes de tables (non partitionnée, partitionnée, partitionnée+buckettée)
2. exécuter un ensemble de requêtes métier (top cat, sentiment, churn)
3. comparer temps, IO, CPU
4. documenter les observations

## Livrables de recherche
- analyse comparative
- scripts reproductibles
- recommandations d'ingénierie
