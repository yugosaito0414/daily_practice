--Cities With Completed Trades [Robinhood SQL Interview Question]
--https://datalemur.com/questions/completed-trades

SELECT
    u.city
   ,COUNT (t.order_id) AS total_orders
FROM
    trades AS t
LEFT OUTER JOIN
    users AS u
ON u.user_id = t.user_id
where
    t.status = 'Completed'
GROUP BY 
    u.city
ORDER BY 
    total_orders DESC
limit 3;
