SELECT customer_id, COUNT(visit_id) AS count_no_trans FROM visits
WHERE visit_id NOT IN (SELECT visit_id FROM transactions)
GROUP BY customer_id