SELECT 
    location
    ,AVG(popularity) AS average_popularity
FROM 
    facebook_employees
LEFT OUTER JOIN
    facebook_hack_survey
ON facebook_employees.id = facebook_hack_survey.employee_id
GROUP BY location
