--https://datalemur.com/questions/sql-third-transaction
--User's Third Transaction [Uber SQL Interview Question]

SELECT 
    user_id, 
    spend, 
    transaction_date
FROM (
  SELECT
    user_id, 
    spend, 
    transaction_date,
    RANK() OVER (
      PARTITION BY user_id 
      ORDER BY transaction_date) AS rank_num
  FROM transactions
  ) AS trans_num
WHERE rank_num = 3;
