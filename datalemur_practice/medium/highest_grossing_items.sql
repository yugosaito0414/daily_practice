--https://datalemur.com/questions/sql-highest-grossing
--Highest-Grossing Items [Amazon SQL Interview Question]

SELECT 
  category
  ,product
  ,total_spend
FROM (
  SELECT
    category
    ,product 
    ,SUM(spend) as total_spend
    ,RANK() OVER( PARTITION BY category ORDER BY SUM(spend) DESC) AS rank
  FROM product_spend
  WHERE transaction_date >= '2022-01-01'
  AND transaction_date <= '2022-12-31'
  GROUP BY category, product) AS highest_product
WHERE rank <= 2;
