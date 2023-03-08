--[Duplicate Job Listings [Linkedin SQL Interview Question]
--https://datalemur.com/questions/duplicate-job-listings

WITH jobs_grouped AS (
  SELECT 
    company_id, 
    title, 
    description, 
    COUNT(job_id) AS job_count
  FROM job_listings
  GROUP BY 
    company_id, 
    title, 
    description)

SELECT COUNT(DISTINCT company_id) AS co_w_duplicate_jobs
FROM jobs_grouped
WHERE job_count > 1;
