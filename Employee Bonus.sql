# Write your MySQL query statement below
SELECT name, bonus
FROM Employee
LEFT JOIN Bonus ON Employee.empId=Bonus.empId
WHERE Bonus.bonus < 1000 OR Bonus.bonus IS NULL;