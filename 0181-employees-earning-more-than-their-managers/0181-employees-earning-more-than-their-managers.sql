# Write your MySQL query statement below
SELECT name as Employee FROM
(
SELECT a.id, a.name, a.salary, a.managerId,
b.name manager_name, b.salary manager_salary
FROM Employee a
INNER JOIN Employee b
ON a.managerId=b.id
) a
where salary > manager_salary