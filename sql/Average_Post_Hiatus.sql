--https://datalemur.com/questions/sql-average-post-hiatus-1
--Average Post Hiatus (Part 1) [Facebook SQL Interview Question]

SELECT 
  user_id, 
  MAX(post_date::DATE) - MIN(post_date::DATE) AS days_between
FROM posts
where DATE_PART('year', post_date::DATE) = 2021
group by user_id
HAVING COUNT(post_id)>1
