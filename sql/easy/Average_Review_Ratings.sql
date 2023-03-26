--https://datalemur.com/questions/sql-avg-review-ratings
--Average Review Ratings [Amazon SQL Interview Question]

SELECT 
  EXTRACT(Month FROM submit_date) AS mth, 
  product_id,
  round (avg(stars), 2) AS avg_stars
FROM reviews
GROUP BY product_id, mth
ORDER BY mth ASC, product_id ASC
