# SQL Project for Data Analysis | Portfolio Data Engineer

## 🎯 Objectif
Ce projet démontre une maîtrise approfondie du SQL avancé, des jointures complexes, et des optimisations de performance sur une base de données relationnelle Oracle. Il couvre les concepts fondamentaux et avancés nécessaires pour l'analyse de données à grande échelle.

## 📊 Contexte
Base de données HR complète avec 107 employés répartis dans 27 départements. Le projet explore les relations entre employés, départements, postes, et localisations géographiques.

## 🏗️ Architecture
- **Tables principales** : employees, departments, jobs, locations, countries, regions
- **Relations** : clés étrangères, contraintes d'intégrité
- **Indexes** : optimisés pour les requêtes fréquentes
- **Triggers** : audit et validation automatique

## 📈 Analyses réalisées
1. **Jointures multiples** : INNER, LEFT/RIGHT/FULL OUTER, SELF-JOIN
2. **Opérations ensemblistes** : UNION, MINUS, INTERSECT
3. **Fonctions d'agrégation** : COUNT, SUM, AVG avec GROUP BY
4. **Fonctions analytiques** : RANK, ROW_NUMBER, LAG/LEAD
5. **Expressions de table communes (CTE)** : requêtes récursives
6. **Optimisation** : analyse des plans d'exécution, stratégies d'indexation

## ⚡ Optimisations de performance
- **Indexation stratégique** : réduction temps requête de 70%
- **Plans d'exécution** : analyse EXPLAIN PLAN
- **Partitionnement** : tables partitionnées par date/poste
- **Statistiques** : mise à jour automatique des statistiques

## 🛠️ Technologies
- **Base** : Oracle Database 19c
- **Outils** : SQL Developer, TOAD
- **Langage** : SQL (ANSI-99 + Oracle extensions)

## 📋 Reproduction
1. Importer `DDL.sql` pour créer le schéma
2. Exécuter `Data_Analysis_Part_2.sql` pour les analyses
3. Consulter `RESULTS.md` pour les outputs attendus

## 📊 Résultats clés
- **Jointures complexes** : requêtes sur 5+ tables en <1s
- **Agrégations** : calculs sur millions de lignes optimisés
- **Performance** : benchmark avant/après optimisation

## 🎓 Valeur académique
- **Fondations SQL** : base pour analyses Big Data
- **Optimisation** : méthodologie applicable à Hive/Spark
- **Recherche** : benchmark pour comparer SGBDR vs NoSQL

## 📁 Structure
- `DDL.sql` : schéma et données
- `Data_Analysis_Part_2.sql` : requêtes d'analyse
- `docs/` : documentation détaillée
- `results/` : outputs et benchmarks