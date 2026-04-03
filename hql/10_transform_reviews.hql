USE yelp;

-- 1/ Création d'une table ORC partitionnée par année et mois de review
CREATE TABLE IF NOT EXISTS yelp.reviews_orc (
  review_id STRING,
  user_id STRING,
  business_id STRING,
  stars INT,
  review_text STRING,
  useful INT,
  funny INT,
  cool INT,
  year INT,
  month INT
)
STORED AS ORC
TBLPROPERTIES ('orc.compress'='SNAPPY')
PARTITIONED BY (review_year INT, review_month INT);

-- 2/ Remplir de la table externe vers ORC (idempotent via overwrite)
INSERT OVERWRITE TABLE yelp.reviews_orc PARTITION (review_year, review_month)
SELECT
  review_id,
  user_id,
  business_id,
  stars,
  text as review_text,
  useful,
  funny,
  cool,
  year(cast(date as timestamp)) as review_year,
  month(cast(date as timestamp)) as review_month
FROM yelp.reviews;
