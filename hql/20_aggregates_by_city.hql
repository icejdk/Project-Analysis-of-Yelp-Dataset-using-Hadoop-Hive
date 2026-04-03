USE yelp;

-- Métriques par ville et catégorie principale
CREATE TABLE IF NOT EXISTS yelp.business_metrics_city
STORED AS ORC
TBLPROPERTIES ('orc.compress'='SNAPPY') AS
SELECT
  b.city,
  b.state,
  split(b.categories, ',')[0] as main_category,
  COUNT(r.review_id) as total_reviews,
  AVG(r.stars) as avg_stars,
  STDDEV_POP(r.stars) as rating_stddev,
  SUM(r.useful) as useful_votes
FROM yelp.business b
JOIN yelp.reviews_orc r
  ON b.business_id = r.business_id
GROUP BY b.city, b.state, split(b.categories, ',')[0];

-- Vérification simple
SELECT city, main_category, total_reviews, avg_stars
FROM yelp.business_metrics_city
ORDER BY total_reviews DESC
LIMIT 10;
