--Tweets' Rolling Averages [Twitter SQL Interview Question]
--https://datalemur.com/questions/rolling-average-tweets

SELECT 
  user_id, 
  tweet_date,
  ROUND(AVG(COUNT(tweet_date)) OVER(
    PARTITION BY user_id 
    ORDER BY tweet_date
    ROWS BETWEEN 2 PRECEDING AND CURRENT ROW), 2)
  AS rolling_avg_3days
FROM 
  tweets
GROUP BY 
  user_id, 
  tweet_date
ORDER BY 
  user_id ASC, 
  tweet_date ASC
