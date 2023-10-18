# Write your MySQL query statement below
WITH CTE AS (
SELECT p.product_id,
CASE WHEN purchase_date >= start_date
AND purchase_date <= end_date
THEN units * price
END total_price,
units
from Prices as p
LEFT join UnitsSold as u
on p.product_id = u.product_id
HAVING total_price IS NOT NULL
)
SELECT p.product_id,
ROUND(ifnull(sum(total_price)/sum(units), 0),2) as average_price
from Prices as p
LEFT JOIN CTE ON p.product_id = CTE.product_id
group by 1;