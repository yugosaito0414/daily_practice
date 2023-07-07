--https://datalemur.com/questions/fill-missing-product
--Fill Missing Client Data [Accenture SQL Interview Question]

WITH filled_category AS (
SELECT
  *,
  COUNT(category) OVER (
    ORDER BY product_id) AS numbered_category
FROM products
)

SELECT
  product_id,
  COALESCE(category, max(category) OVER (
    PARTITION BY numbered_category)) AS category,
  name
FROM filled_category;
