# Configuration environnement de développement

## 🐳 Docker Setup pour Oracle Database

### Prérequis
- Docker Desktop installé
- 4GB RAM minimum
- 10GB espace disque

### Démarrage de la base Oracle
```bash
# Pull l'image Oracle XE
docker pull gvenzl/oracle-xe:21-slim

# Lancer le container
docker run -d \
  --name oracle-db \
  -p 1521:1521 \
  -e ORACLE_PASSWORD=oracle \
  -v oracle-data:/opt/oracle/oradata \
  gvenzl/oracle-xe:21-slim

# Attendre le démarrage (2-3 minutes)
docker logs -f oracle-db
```

### Connexion
- **Host** : localhost
- **Port** : 1521
- **Service** : XEPDB1
- **User** : system
- **Password** : oracle

### Import du schéma
```bash
# Copier le fichier DDL dans le container
docker cp DDL.sql oracle-db:/tmp/

# Se connecter et exécuter
docker exec -it oracle-db sqlplus system/oracle@XEPDB1

# Dans SQL*Plus :
SQL> @/tmp/DDL.sql
```

### Tests
```sql
-- Vérifier les tables
SELECT table_name FROM user_tables;

-- Compter les employés
SELECT COUNT(*) FROM employees;
```

### Nettoyage
```bash
# Stopper et supprimer
docker stop oracle-db
docker rm oracle-db
docker volume rm oracle-data
```

## 🔄 Alternative : SQLite (pour développement rapide)
Si Oracle est trop lourd, utiliser SQLite avec conversion des scripts.

### Installation Python
```bash
pip install sqlite3
```

### Conversion DDL → SQLite
Les scripts peuvent être adaptés avec des modifications mineures :
- `NUMBER` → `INTEGER`
- `VARCHAR2` → `TEXT`
- Pas de séquences Oracle → utiliser AUTOINCREMENT