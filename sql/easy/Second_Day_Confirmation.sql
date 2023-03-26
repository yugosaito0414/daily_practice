--https://datalemur.com/questions/second-day-confirmation
--Second Day Confirmation [TikTok SQL Interview Question]

SELECT 
  user_id
FROM 
  emails AS e
LEFT JOIN texts AS t
ON e.email_id = t.email_id
WHERE t.action_date = e.signup_date + INTERVAL '1 day' 
  AND signup_action = 'Confirmed';
  
