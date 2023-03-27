--Compressed Mean [Alibaba SQL Interview Question]
--https://datalemur.com/questions/alibaba-compressed-mean

SELECT 
  ROUND 
    (CAST(SUM(item_count * order_occurrences) AS decimal) 
    /SUM(order_occurrences),1) AS mean
FROM 
  items_per_order;

