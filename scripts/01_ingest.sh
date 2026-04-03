#!/bin/bash
set -euo pipefail

# Variables
HDFS_BASE=/user/hive/warehouse/yelp
LOCAL_RAW_DIR=$(pwd)/data/raw

echo "[1] Création des dossiers HDFS si nécessaire"
hdfs dfs -mkdir -p ${HDFS_BASE}/business
hdfs dfs -mkdir -p ${HDFS_BASE}/reviews
hdfs dfs -mkdir -p ${HDFS_BASE}/users

echo "[2] Chargement des JSON bruts vers HDFS"
hdfs dfs -put -f ${LOCAL_RAW_DIR}/business.json ${HDFS_BASE}/business/
hdfs dfs -put -f ${LOCAL_RAW_DIR}/review.json ${HDFS_BASE}/reviews/
hdfs dfs -put -f ${LOCAL_RAW_DIR}/user.json ${HDFS_BASE}/users/

echo "Ingestion complétée."