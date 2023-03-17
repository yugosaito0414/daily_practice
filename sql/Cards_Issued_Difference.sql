--Cards Issued Difference [JPMorgan Chase SQL Interview Question]
--https://datalemur.com/questions/cards-issued-difference

SELECT DISTINCT x.card_name
      ,(x.most_issued - x.least_issued) AS difference
FROM (SELECT card_name, 
      MAX(issued_amount) OVER(PARTITION BY card_name ORDER BY issued_amount DESC) 
      AS most_issued,
      MIN(issued_amount) OVER(PARTITION BY card_name ORDER BY issued_amount DESC 
      RANGE BETWEEN UNBOUNDED PRECEDING and UNBOUNDED FOLLOWING ) AS least_issued
      FROM monthly_cards_issued ) AS x
ORDER BY difference DESC
