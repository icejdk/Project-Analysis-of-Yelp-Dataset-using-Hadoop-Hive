from pyspark.sql import SparkSession
from pyspark.sql.functions import col, year, month

if __name__ == '__main__':
    spark = SparkSession.builder.appName('YelpETL')\
        .enableHiveSupport()\
        .getOrCreate()

    # lecture des tablesHive
    reviews = spark.table('yelp.reviews')
    business = spark.table('yelp.business')

    # transformation basique
    reviews_clean = reviews\
        .withColumn('review_date', col('date').cast('timestamp'))\
        .withColumn('review_year', year(col('review_date')))\
        .withColumn('review_month', month(col('review_date')))\
        .withColumnRenamed('text', 'review_text')

    # écriture optimisée ORC partitionnée
    reviews_clean.write.mode('overwrite')\
        .format('orc')\
        .option('compression', 'snappy')\
        .partitionBy('review_year', 'review_month')\
        .saveAsTable('yelp.reviews_orc')

    # exemple agrégat intermédiaire
    metrics = reviews_clean.groupBy('review_year', 'review_month')\
        .avg('stars')\
        .withColumnRenamed('avg(stars)', 'avg_stars')

    metrics.show(10, truncate=False)

    spark.stop()