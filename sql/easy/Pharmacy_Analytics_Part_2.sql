--Pharmacy Analytics (Part 2) [CVS Health SQL Interview Question]
--https://datalemur.com/questions/non-profitable-drugs

SELECT 
    manufacturer, COUNT(drug) AS drug_count, 
    ABS (SUM(total_sales - cogs)) AS total_loss
FROM 
    pharmacy_sales
WHERE 
    cogs > total_sales
GROUP BY 
    manufacturer
ORDER BY 
    total_loss DESC;

