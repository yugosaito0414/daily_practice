--https://learnsql.com/blog/what-is-with-clause-sql/
--What Is the WITH Clause in SQL?
--an example of with.

WITH cte_quantity
AS
(SELECT
    SUM(Quantity) as Total
FROM OrderDetails
GROUP BY ProductID)
 
SELECT
    AVG(Total) average_product_quantity
FROM cte_quantity;

--they will produce same outcome.
SELECT
    AVG(Total) average_product_quantity
FROM
(SELECT
SUM(Quantity) as Total
FROM OrderDetails
GROUP BY ProductID)
