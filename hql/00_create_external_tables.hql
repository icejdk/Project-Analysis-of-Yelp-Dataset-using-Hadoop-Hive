-- CONTEXTE : créer tables externes Hive sur fichiers JSON Yogelp
CREATE EXTERNAL TABLE IF NOT EXISTS yelp.business (
  business_id STRING,
  name STRING,
  address STRING,
  city STRING,
  state STRING,
  postal_code STRING,
  latitude DOUBLE,
  longitude DOUBLE,
  stars DOUBLE,
  review_count INT,
  is_open INT,
  categories STRING
)
ROW FORMAT SERDE 'org.apache.hive.hcatalog.data.JsonSerDe'
LOCATION '/user/hive/warehouse/yelp/business';

CREATE EXTERNAL TABLE IF NOT EXISTS yelp.reviews (
  review_id STRING,
  user_id STRING,
  business_id STRING,
  stars INT,
  date STRING,
  text STRING,
  useful INT,
  funny INT,
  cool INT
)
ROW FORMAT SERDE 'org.apache.hive.hcatalog.data.JsonSerDe'
LOCATION '/user/hive/warehouse/yelp/reviews';

CREATE EXTERNAL TABLE IF NOT EXISTS yelp.users (
  user_id STRING,
  name STRING,
  review_count INT,
  yelping_since STRING,
  useful INT,
  funny INT,
  cool INT,
  fans INT,
  elite STRING,
  friends STRING,
  average_stars DOUBLE,
  compliment_hot INT,
  compliment_more INT,
  compliment_profile INT,
  compliment_cute INT,
  compliment_list INT,
  compliment_note INT,
  compliment_plain INT,
  compliment_cool INT,
  compliment_funny INT,
  compliment_writer INT,
  compliment_photos INT
)
ROW FORMAT SERDE 'org.apache.hive.hcatalog.data.JsonSerDe'
LOCATION '/user/hive/warehouse/yelp/users';
