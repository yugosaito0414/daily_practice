--https://datalemur.com/questions/click-through-rate
--App Click-through Rate (CTR) [Facebook SQL Interview Question]

SELECT 
  app_id, 
 ROUND( 100.0 * 
  SUM(case when event_type = 'click' then 1 else 0 end )/
  SUM(case when event_type = 'impression' then 1 else 0 end), 2) as ctr_rate
FROM events
where timestamp >= '2022-01-01' and timestamp < '2023-01-01'
GROUP BY app_id
