--Patient Support Analysis (Part 1) [UnitedHealth SQL Interview Question]
--https://datalemur.com/questions/frequent-callers

SELECT 
  COUNT(member_call) AS member_count
FROM (
  SELECT COUNT(policy_holder_id) AS member_call
  FROM callers
  GROUP BY policy_holder_id
  ) AS subquery
WHERE member_call >= 3

