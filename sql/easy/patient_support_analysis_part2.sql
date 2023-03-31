--https://datalemur.com/questions/uncategorized-calls-percentage
--Patient Support Analysis (Part 2) [UnitedHealth SQL Interview Question]

SELECT ROUND(100.0 *non_category/all_category,1) AS call_percentage
FROM (
  SELECT
    SUM(CASE WHEN call_category IS NULL OR call_category = 'n/a' then 1 ELSE 0 END) AS non_category
    ,COUNT(*) AS all_category
  FROM
    callers
) AS two_categories

