--Pharmacy Analytics (Part 1) [CVS Health SQL Interview Question]
--https://datalemur.com/questions/top-profitable-drugs

SELECT 
    drug, SUM(total_sales - cogs) AS Total_Profit
FROM 
    pharmacy_sales
GROUP BY 
    product_id, drug
ORDER BY 
    Total_Profit DESC
LIMIT 3; 
