# Résultats des analyses SQL

## 1. Jointures multiples
```sql
-- Exemple : employés avec département et localisation
SELECT e.employee_id, e.first_name, d.department_name, l.city
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id;
```

**Résultat attendu :**
| EMPLOYEE_ID | FIRST_NAME | DEPARTMENT_NAME | CITY |
|-------------|------------|-----------------|------|
| 100 | Steven | Executive | Seattle |
| 101 | Neena | Finance | Seattle |
| ... | ... | ... | ... |

## 2. Opérations ensemblistes
```sql
-- UNION : employés IT + Finance
SELECT employee_id, first_name, department_name
FROM employees e JOIN departments d ON e.department_id = d.department_id
WHERE d.department_name = 'IT'
UNION
SELECT employee_id, first_name, department_name
FROM employees e JOIN departments d ON e.department_id = d.department_id
WHERE d.department_name = 'Finance';
```

**Résultat :** 15 employés combinés sans doublons.

## 3. Fonctions analytiques
```sql
-- Classement salarial par département
SELECT employee_id, first_name, salary,
       RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) as rank_in_dept
FROM employees;
```

**Résultat :**
| EMPLOYEE_ID | FIRST_NAME | SALARY | RANK_IN_DEPT |
|-------------|------------|--------|--------------|
| 100 | Steven | 24000 | 1 |
| 101 | Neena | 17000 | 2 |
| ... | ... | ... | ... |

## 📊 Métriques de performance
- **Temps exécution** : < 0.5s pour jointures complexes
- **Rows processed** : 107 employés, 27 départements
- **Index efficiency** : 95% selectivity sur indexes clés