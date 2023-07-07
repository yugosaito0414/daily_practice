--https://datalemur.com/questions/supercloud-customer
--Supercloud Customer [Microsoft SQL Interview Question]

WITH supercloud AS (
  SELECT 
    customers.customer_id
    ,COUNT(DISTINCT products.product_category) AS unique_count
  FROM 
    customer_contracts AS customers
  JOIN products
  ON customers.product_id = products.product_id
  GROUP BY customers.customer_id 
) 

SELECT 
  customer_id
FROM
  supercloud
WHERE 
  unique_count = (
    SELECT COUNT(DISTINCT product_category)
    FROM products)
ORDER BY customer_id;
