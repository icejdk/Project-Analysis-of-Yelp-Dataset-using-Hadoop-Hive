#!/bin/bash
set -euo pipefail

echo "Exécution des scripts Hive pour init et agrégats"
	hive -f $(pwd)/hql/00_create_external_tables.hql
	hive -f $(pwd)/hql/10_transform_reviews.hql
	hive -f $(pwd)/hql/20_aggregates_by_city.hql

echo "Hive workflow terminé."