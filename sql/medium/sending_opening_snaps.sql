--https://datalemur.com/questions/time-spent-snaps
--Sending vs. Opening Snaps [Snapchat SQL Interview Question]

WITH data as (
  SELECT 
    age_bucket,
    SUM(time_spent) filter (WHERE activity_type = 'open') AS open,
    SUM(time_spent) filter (WHERE activity_type = 'send') AS send
  FROM 
    activities
  JOIN 
    age_breakdown
  ON activities.user_id = age_breakdown.user_id
  GROUP BY age_bucket
) 

SELECT 
  age_bucket,
  ROUND(100 * send/(send+open),2) AS send_perc,
  ROUND(100 * open/(send+open),2) AS open_perc
FROM 
  data
