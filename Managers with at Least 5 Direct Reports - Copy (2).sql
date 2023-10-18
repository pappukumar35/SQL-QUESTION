SELECT Name 
FROM Employee 
AS _employee 
JOIN 
(SELECT ManagerId, 
 COUNT(*) 
 AS _count 
 FROM Employee 
 WHERE ManagerId 
 IS NOT NULL 
 GROUP BY ManagerId) 
        AS manager_id
        ON _employee.id=manager_id.ManagerId 
        WHERE manager_id._count>=5